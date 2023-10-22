package com.easyvictory.cheto;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.FileProvider;
import com.hack.opensdk.HackApi;
import com.hack.utils.FileUtils;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class MainActivity extends Activity implements View.OnClickListener {
    static MainActivity instance = null;
    private static boolean isAnyRequestProcessing = false;
    Activity gActivity = this;
    boolean shouldInstallAssistApp = false;

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXX(String str, String str2, String str3);

    private native int dfdfh(String str, String str2);

    private ApplicationInfo getPkgInfo(Context context, String str) {
        try {
            return context.getPackageManager().getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private boolean matchWithGameABI() {
        try {
            return getPkgInfo(this, Deobfuscator$app$Release.getString(-4871504304963346892L)).nativeLibraryDir.contains(Deobfuscator$app$Release.getString(-4871504420927463884L)) == getApplicationInfo().nativeLibraryDir.contains(Deobfuscator$app$Release.getString(-4871504446697267660L));
        } catch (Throwable th) {
            Logger.e(th.getMessage());
            return false;
        }
    }

    boolean checkMatchWithGameABI() {
        if (matchWithGameABI()) {
            return true;
        }
        new AlertDialog.Builder(this).setTitle(R.string.error).setMessage(R.string.game_arch_dont_match).setCancelable(false).setPositiveButton(R.string.okay, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.MainActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Deobfuscator$app$Release.getString(-4871503244106424780L);
                try {
                    MainActivity.this.startActivity(new Intent(Deobfuscator$app$Release.getString(-4871503360070541772L), Uri.parse(Deobfuscator$app$Release.getString(-4871503476034658764L))));
                } catch (ActivityNotFoundException unused) {
                    MainActivity.this.startActivity(new Intent(Deobfuscator$app$Release.getString(-4871503677898121676L), Uri.parse(Deobfuscator$app$Release.getString(-4871503793862238668L))));
                }
            }
        }).setNeutralButton(R.string.exit, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.MainActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.gActivity.finishAffinity();
                System.exit(0);
            }
        }).show();
        return false;
    }

    void installAssist() {
        Intent intent = new Intent(Deobfuscator$app$Release.getString(-4871504472467071436L));
        intent.setDataAndType(getAssistUri(this), Deobfuscator$app$Release.getString(-4871504588431188428L));
        intent.addFlags(3);
        startActivityForResult(intent, 999);
    }

    void uninstallAssist() {
        Intent intent = new Intent(Deobfuscator$app$Release.getString(-4871504760229880268L));
        intent.setData(Uri.parse(Deobfuscator$app$Release.getString(-4871504884783931852L) + getPackageName() + Deobfuscator$app$Release.getString(-4871504923438637516L)));
        startActivityForResult(intent, 999);
    }

    void logEvent(String str) {
        String[] strArr;
        Bundle bundle = new Bundle();
        bundle.putString(Deobfuscator$app$Release.getString(-4871504936323539404L), str);
        bundle.putString(Deobfuscator$app$Release.getString(-4871504974978245068L), String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString(Deobfuscator$app$Release.getString(-4871505009337983436L), Build.BOARD);
        bundle.putString(Deobfuscator$app$Release.getString(-4871505035107787212L), Build.BRAND);
        bundle.putString(Deobfuscator$app$Release.getString(-4871505060877590988L), Build.MODEL);
        bundle.putString(Deobfuscator$app$Release.getString(-4871505086647394764L), Build.DEVICE);
        bundle.putString(Deobfuscator$app$Release.getString(-4871505116712165836L), Build.MANUFACTURER);
        String string = Deobfuscator$app$Release.getString(-4871505172546740684L);
        for (int i = 0; i < Build.SUPPORTED_ABIS.length; i++) {
            string = string + strArr[i] + Deobfuscator$app$Release.getString(-4871505185431642572L);
        }
        bundle.putString(Deobfuscator$app$Release.getString(-4871505202611511756L), string + Deobfuscator$app$Release.getString(-4871505194021577164L));
        App.mFirebaseAnalytics.logEvent(Deobfuscator$app$Release.getString(-4871505267036021196L), bundle);
    }

    Uri getAssistUri(Context context) {
        File file = new File(context.getExternalCacheDir(), Deobfuscator$app$Release.getString(-4871505331460530636L));
        try {
            FileUtils.extractAsset(context, Deobfuscator$app$Release.getString(-4871505378705170892L), file);
            return FileProvider.getUriForFile(context, context.getPackageName() + Deobfuscator$app$Release.getString(-4871505425949811148L) + HackProvider.class.getName(), file);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static boolean isHuaweiDevice() {
        return Build.MANUFACTURER.toLowerCase().contains(Deobfuscator$app$Release.getString(-4871505434539745740L)) || Build.BRAND.toLowerCase().contains(Deobfuscator$app$Release.getString(-4871505464604516812L));
    }

    public static final List<String> getListOfInstalledBrowsers(Context context) throws Throwable {
        ArrayList arrayList = new ArrayList();
        try {
            context.getPackageManager().getPackageInfo(Deobfuscator$app$Release.getString(-4871505494669287884L), 0);
            arrayList.add(Deobfuscator$app$Release.getString(-4871505576273666508L));
            return arrayList;
        } catch (Throwable unused) {
            if (isHuaweiDevice()) {
                try {
                    context.getPackageManager().getPackageInfo(Deobfuscator$app$Release.getString(-4871505657878045132L), 0);
                    arrayList.add(Deobfuscator$app$Release.getString(-4871505739482423756L));
                } catch (Throwable unused2) {
                }
                try {
                    context.getPackageManager().getPackageInfo(Deobfuscator$app$Release.getString(-4871505821086802380L), 0);
                    arrayList.add(Deobfuscator$app$Release.getString(-4871505937050919372L));
                } catch (Throwable unused3) {
                }
            }
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent();
            intent.setAction(Deobfuscator$app$Release.getString(-4871506053015036364L));
            intent.addCategory(Deobfuscator$app$Release.getString(-4871506168979153356L));
            intent.setData(Uri.parse(Deobfuscator$app$Release.getString(-4871506315008041420L)));
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (queryIntentActivities.size() > 0) {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    String str = resolveInfo.activityInfo.applicationInfo.packageName;
                    if (str != null && !str.equals(Deobfuscator$app$Release.getString(-4871506413792289228L))) {
                        arrayList.add(str);
                    }
                }
            }
            return arrayList;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean z;
        boolean z2;
        super.onCreate(bundle);
        instance = this;
        setContentView(R.layout.activity_main);
        findViewById(R.id.BuyNow).setVisibility(8);
        findViewById(R.id.gotoSiteButton).setVisibility(8);
        findViewById(R.id.gotoDiscordButton).setVisibility(8);
        createOver();
        getCredentials();
        TextView textView = (TextView) findViewById(R.id.password);
        logEvent(((TextView) findViewById(R.id.usernameInput)).getText().toString());
        try {
            z = HackApi.isSupportBpf();
        } catch (Throwable unused) {
            z = false;
        }
        if (!z) {
            runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.MainActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    if (MainActivity.this.isFinishing()) {
                        return;
                    }
                    new AlertDialog.Builder(MainActivity.this).setTitle(R.string.error).setMessage(R.string.device_not_supported).setCancelable(false).setPositiveButton(R.string.okay, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.MainActivity.3.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            this.finishAffinity();
                            System.exit(0);
                        }
                    }).setNeutralButton(R.string.try_again, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.MainActivity.3.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            Intent intent = new Intent(this, MainActivity.class);
                            intent.setFlags(268435456);
                            this.startActivity(intent);
                            this.finishAffinity();
                            System.exit(0);
                        }
                    }).show();
                }
            });
        }
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(Deobfuscator$app$Release.getString(-4871506448152027596L));
        arrayList.add(Deobfuscator$app$Release.getString(-4871506534051373516L));
        try {
            for (String str : getListOfInstalledBrowsers(this)) {
                arrayList.add(str);
            }
            if (checkMatchWithGameABI()) {
                boolean z3 = true;
                if (ActivityCompat.checkSelfPermission(this, Deobfuscator$app$Release.getString(-4871506650015490508L)) != 0) {
                    ActivityCompat.requestPermissions(this, new String[]{Deobfuscator$app$Release.getString(-4871506830404116940L)}, 998);
                }
                for (String str2 : arrayList) {
                    ApplicationInfo pkgInfo = getPkgInfo(this, str2);
                    if (pkgInfo != null && pkgInfo.nativeLibraryDir != null) {
                        if (!pkgInfo.nativeLibraryDir.contains(Deobfuscator$app$Release.getString(-4871507010792743372L))) {
                            this.shouldInstallAssistApp = true;
                        }
                        try {
                            HackApi.installPackageFromHost(str2, 0, true);
                        } catch (Throwable unused2) {
                        }
                    }
                }
                try {
                    List<String> installedPackages = HackApi.getInstalledPackages(0, 0);
                    if (installedPackages != null) {
                        for (String str3 : installedPackages) {
                            Iterator it = arrayList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (((String) it.next()).equals(str3)) {
                                        z2 = false;
                                        break;
                                    }
                                } else {
                                    z2 = true;
                                    break;
                                }
                            }
                            if (z2) {
                                HackApi.uninstallPackage(str3, 0);
                            }
                        }
                    }
                } catch (Throwable th) {
                    Logger.e(th.getMessage());
                }
                if (getApplicationInfo().nativeLibraryDir != null && getApplicationInfo().nativeLibraryDir.contains(Deobfuscator$app$Release.getString(-4871507036562547148L))) {
                    if ((this.shouldInstallAssistApp || getPkgInfo(this, getPackageName() + Deobfuscator$app$Release.getString(-4871507062332350924L)) == null) ? false : false) {
                        findViewById(R.id.LoginButton).setClickable(false);
                        findViewById(R.id.CreateAccountBtn).setClickable(false);
                        findViewById(R.id.forgotpass).setClickable(false);
                        uninstallAssist();
                    }
                    if (this.shouldInstallAssistApp && getPkgInfo(this, getPackageName() + Deobfuscator$app$Release.getString(-4871507075217252812L)) == null) {
                        findViewById(R.id.LoginButton).setClickable(false);
                        findViewById(R.id.CreateAccountBtn).setClickable(false);
                        findViewById(R.id.forgotpass).setClickable(false);
                        installAssist();
                    }
                }
                Intent intent = new Intent();
                String packageName = getPackageName();
                if (((PowerManager) getSystemService(Deobfuscator$app$Release.getString(-4871507088102154700L))).isIgnoringBatteryOptimizations(packageName)) {
                    return;
                }
                findViewById(R.id.LoginButton).setClickable(false);
                findViewById(R.id.CreateAccountBtn).setClickable(false);
                findViewById(R.id.forgotpass).setClickable(false);
                intent.setAction(Deobfuscator$app$Release.getString(-4871507113871958476L));
                intent.setData(Uri.parse(Deobfuscator$app$Release.getString(-4871507345800192460L) + packageName));
                startActivityForResult(intent, 997);
            }
        } catch (Throwable th2) {
            throw new RuntimeException(th2);
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 999) {
            if (i == 997) {
                new Thread(new Runnable() { // from class: com.easyvictory.cheto.MainActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Thread.sleep(500L);
                            MainActivity.this.gActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.MainActivity.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (((PowerManager) MainActivity.this.getSystemService(Deobfuscator$app$Release.getString(-4871504107394851276L))).isIgnoringBatteryOptimizations(MainActivity.this.getPackageName())) {
                                        MainActivity.this.findViewById(R.id.LoginButton).setClickable(true);
                                        MainActivity.this.findViewById(R.id.CreateAccountBtn).setClickable(true);
                                        MainActivity.this.findViewById(R.id.forgotpass).setClickable(true);
                                    }
                                }
                            });
                        } catch (InterruptedException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }).start();
            }
        } else if (this.shouldInstallAssistApp) {
            if (getPkgInfo(this, getPackageName() + Deobfuscator$app$Release.getString(-4871507384454898124L)) != null) {
                findViewById(R.id.LoginButton).setClickable(true);
                findViewById(R.id.CreateAccountBtn).setClickable(true);
                findViewById(R.id.forgotpass).setClickable(true);
                return;
            }
            installAssist();
        } else if (getPkgInfo(this, getPackageName() + Deobfuscator$app$Release.getString(-4871507397339800012L)) == null) {
            findViewById(R.id.LoginButton).setClickable(true);
            findViewById(R.id.CreateAccountBtn).setClickable(true);
            findViewById(R.id.forgotpass).setClickable(true);
        } else {
            uninstallAssist();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Process.killProcess(Process.myPid());
    }

    void createOver() {
        ((TextView) findViewById(R.id.forgotpass)).setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.startActivity(new Intent(MainActivity.this, FPActivity.class));
            }
        });
    }

    private boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService(Deobfuscator$app$Release.getString(-4871507410224701900L))).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static void openUrl(Context context, String str) {
        Intent intent = new Intent(Deobfuscator$app$Release.getString(-4871507466059276748L));
        intent.setData(Uri.parse(str));
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDevInfo() {
        String[] strArr;
        String str = ((((((Deobfuscator$app$Release.getString(-4871507582023393740L) + Deobfuscator$app$Release.getString(-4871507586318361036L)) + Deobfuscator$app$Release.getString(-4871507672217706956L) + String.valueOf(Build.VERSION.SDK_INT) + '\n') + Deobfuscator$app$Release.getString(-4871507715167379916L) + Build.BOARD + '\n') + Deobfuscator$app$Release.getString(-4871507749527118284L) + Build.BRAND + '\n') + Deobfuscator$app$Release.getString(-4871507783886856652L) + Build.MODEL + '\n') + Deobfuscator$app$Release.getString(-4871507818246595020L) + Build.DEVICE + '\n') + Deobfuscator$app$Release.getString(-4871507856901300684L) + Build.MANUFACTURER + '\n';
        String string = Deobfuscator$app$Release.getString(-4871507921325810124L);
        for (int i = 0; i < Build.SUPPORTED_ABIS.length; i++) {
            string = string + strArr[i] + Deobfuscator$app$Release.getString(-4871507934210712012L);
        }
        return str + Deobfuscator$app$Release.getString(-4871507951390581196L) + (string + Deobfuscator$app$Release.getString(-4871507942800646604L)) + '\n';
    }

    boolean isProgressBarVisible() {
        return findViewById(R.id.progress).getVisibility() == 0;
    }

    void switchProgressBar() {
        View findViewById = findViewById(R.id.progress);
        Button button = (Button) findViewById(R.id.LoginButton);
        if (findViewById.getVisibility() == 8) {
            findViewById.setVisibility(0);
            button.setText(Deobfuscator$app$Release.getString(-4871508024405025228L));
            return;
        }
        findViewById.setVisibility(8);
        button.setText(R.string.Login);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (isProgressBarVisible()) {
            return;
        }
        switch (view.getId()) {
            case R.id.BuyNow /* 2131296275 */:
                Deobfuscator$app$Release.getString(-4871509364434821580L);
                try {
                    startActivity(new Intent(Deobfuscator$app$Release.getString(-4871509446039200204L), Uri.parse(Deobfuscator$app$Release.getString(-4871509562003317196L))));
                    return;
                } catch (ActivityNotFoundException unused) {
                    startActivity(new Intent(Deobfuscator$app$Release.getString(-4871509729507041740L), Uri.parse(Deobfuscator$app$Release.getString(-4871509845471158732L))));
                    return;
                }
            case R.id.CreateAccountBtn /* 2131296280 */:
                startActivity(new Intent(this, RegisterActivity.class));
                return;
            case R.id.LoginButton /* 2131296303 */:
                if (isAnyRequestProcessing) {
                    Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                    return;
                }
                String obj = ((EditText) findViewById(R.id.usernameInput)).getText().toString();
                String obj2 = ((EditText) findViewById(R.id.password)).getText().toString();
                isAnyRequestProcessing = true;
                switchProgressBar();
                new Thread(new AnonymousClass6(obj, obj2)).start();
                return;
            case R.id.TestGame /* 2131296343 */:
                Deobfuscator$app$Release.getString(-4871508269218161100L);
                if (!ModulesActivity.isPackageInstalled(this, Constant.getGamePackageName())) {
                    Toast.makeText(this, (int) R.string.pls_install_da_game, 0).show();
                    try {
                        startActivity(new Intent(Deobfuscator$app$Release.getString(-4871508385182278092L), Uri.parse(Deobfuscator$app$Release.getString(-4871508501146395084L))));
                        return;
                    } catch (ActivityNotFoundException unused2) {
                        startActivity(new Intent(Deobfuscator$app$Release.getString(-4871508703009857996L), Uri.parse(Deobfuscator$app$Release.getString(-4871508818973974988L))));
                        return;
                    }
                }
                HackApi.installPackageFromHost(Deobfuscator$app$Release.getString(-4871509132506587596L), 0, true);
                Intent launchIntentForPackage = App.INSTANCE().getPackageManager().getLaunchIntentForPackage(Deobfuscator$app$Release.getString(-4871509248470704588L));
                launchIntentForPackage.addFlags(2097152);
                HackApi.startActivity(launchIntentForPackage, 0);
                return;
            case R.id.gotoDiscordButton /* 2131296549 */:
                openUrl(this, Deobfuscator$app$Release.getString(-4871508136074174924L));
                return;
            case R.id.gotoSiteButton /* 2131296550 */:
                openUrl(this, Deobfuscator$app$Release.getString(-4871508028699992524L));
                return;
            default:
                return;
        }
    }

    /* renamed from: com.easyvictory.cheto.MainActivity$6  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass6 implements Runnable {
        final /* synthetic */ String val$password;
        final /* synthetic */ String val$username;

        AnonymousClass6(String str, String str2) {
            this.val$username = str;
            this.val$password = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent;
            final MainActivity mainActivity = MainActivity.this;
            final String XXXX = mainActivity.XXXX(this.val$username, this.val$password, mainActivity.getDevInfo());
            boolean unused = MainActivity.isAnyRequestProcessing = false;
            if (XXXX.length() > 0) {
                if (XXXX.equals(Deobfuscator$app$Release.getString(-4871504133164655052L)) || XXXX.equals(Deobfuscator$app$Release.getString(-4871504167524393420L))) {
                    mainActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.MainActivity.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(mainActivity, XXXX, 0).show();
                        }
                    });
                    MainActivity.saveCredentials(this.val$username, this.val$password, mainActivity);
                    if (XXXX.equals(Deobfuscator$app$Release.getString(-4871504236243870156L))) {
                        intent = new Intent(mainActivity, AccountVerification.class);
                    } else {
                        intent = new Intent(mainActivity, ModulesActivity.class);
                    }
                    MainActivity.this.startActivity(intent);
                } else {
                    MainActivity.this.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.MainActivity.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MainActivity.this.isFinishing()) {
                                return;
                            }
                            new AlertDialog.Builder(MainActivity.this).setTitle(R.string.error_occurred).setMessage(XXXX).setCancelable(false).setPositiveButton(R.string.okay, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.MainActivity.6.2.2
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                }
                            }).setNeutralButton(R.string.try_again, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.MainActivity.6.2.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    MainActivity.this.findViewById(R.id.LoginButton).callOnClick();
                                }
                            }).show();
                        }
                    });
                }
            }
            mainActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.MainActivity.6.3
                @Override // java.lang.Runnable
                public void run() {
                    MainActivity.this.switchProgressBar();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveCredentials(String str, String str2, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871510124644032972L), 0).edit();
        edit.putString(Deobfuscator$app$Release.getString(-4871510176183640524L), str);
        edit.putString(Deobfuscator$app$Release.getString(-4871510214838346188L), str2);
        edit.apply();
    }

    private void getCredentials() {
        SharedPreferences sharedPreferences = getSharedPreferences(Deobfuscator$app$Release.getString(-4871510253493051852L), 0);
        String string = sharedPreferences.getString(Deobfuscator$app$Release.getString(-4871510305032659404L), null);
        String string2 = sharedPreferences.getString(Deobfuscator$app$Release.getString(-4871510343687365068L), null);
        ((TextView) findViewById(R.id.usernameInput)).setText(string);
        ((TextView) findViewById(R.id.password)).setText(string2);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        getCredentials();
        TextView textView = (TextView) findViewById(R.id.password);
        if (((TextView) findViewById(R.id.usernameInput)).getText().length() <= 1 || textView.getText().length() <= 1 || !findViewById(R.id.LoginButton).isClickable()) {
            return;
        }
        findViewById(R.id.LoginButton).callOnClick();
        Toast.makeText(this, (int) R.string.auto_login, 0).show();
    }
}
