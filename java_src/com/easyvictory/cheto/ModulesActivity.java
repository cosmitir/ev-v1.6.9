package com.easyvictory.cheto;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.InputFilter;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.hack.opensdk.HackApi;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
/* loaded from: classes.dex */
public class ModulesActivity extends AppCompatActivity {
    private static boolean doubleBackToExitPressedOnce = false;
    static Context gContext = null;
    private static boolean isAnyRequestProcessing = false;
    private static boolean isHackLoaded = false;
    private Switch autoRestart;
    private Switch facebookWebLogin;

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXX(String str);

    private native void XXXXX(String str, String str2);

    public static native String XXXXXX(String str, String str2, String str3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void XXXXXXX();

    public static void showPinInputDialog(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(R.string.setup_pin);
        builder.setCancelable(false);
        EditText editText = new EditText(activity);
        editText.setInputType(18);
        editText.setMaxLines(1);
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(8)});
        builder.setView(editText);
        builder.setPositiveButton(R.string.okay, new AnonymousClass1(editText, activity));
        builder.setNegativeButton(R.string.later, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.ModulesActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.easyvictory.cheto.ModulesActivity$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements DialogInterface.OnClickListener {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ EditText val$input;

        AnonymousClass1(EditText editText, Activity activity) {
            this.val$input = editText;
            this.val$activity = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            final String obj = this.val$input.getText().toString();
            if (obj.length() >= 4) {
                boolean unused = ModulesActivity.isAnyRequestProcessing = true;
                new Thread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final String XXXXXX = ModulesActivity.XXXXXX(Deobfuscator$app$Release.getString(-4871510382342070732L), Deobfuscator$app$Release.getString(-4871510386637038028L), obj);
                        AnonymousClass1.this.val$activity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(AnonymousClass1.this.val$activity, XXXXXX, 0).show();
                            }
                        });
                        boolean unused2 = ModulesActivity.isAnyRequestProcessing = false;
                    }
                }).start();
                return;
            }
            Toast.makeText(this.val$activity, (int) R.string.pin_is_short, 0).show();
            ModulesActivity.showPinInputDialog(this.val$activity);
        }
    }

    private void checkPin() {
        isAnyRequestProcessing = true;
        new Thread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.3
            @Override // java.lang.Runnable
            public void run() {
                final ModulesActivity modulesActivity = ModulesActivity.this;
                final String XXXXXX = ModulesActivity.XXXXXX(Deobfuscator$app$Release.getString(-4871510472536383948L), Deobfuscator$app$Release.getString(-4871510476831351244L), Deobfuscator$app$Release.getString(-4871510481126318540L));
                boolean unused = ModulesActivity.isAnyRequestProcessing = false;
                if (XXXXXX.length() > 0) {
                    modulesActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (XXXXXX.equals(Deobfuscator$app$Release.getString(-4871510390932005324L))) {
                                ModulesActivity.showPinInputDialog(modulesActivity);
                            } else {
                                ModulesActivity.setValue(modulesActivity, Deobfuscator$app$Release.getString(-4871510433881678284L), true);
                            }
                        }
                    });
                }
            }
        }).start();
    }

    private void automaticallyLoad() {
        Toast.makeText(this, (int) R.string.auto_load, 0).show();
        new Thread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                this.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ModulesActivity.this.findViewById(R.id.LoadButton).callOnClick();
                    }
                });
            }
        }).start();
    }

    void facebookWebLoginChangeCallback(boolean z) {
        Deobfuscator$app$Release.getString(-4871510803248865740L);
        try {
            Button button = (Button) findViewById(R.id.OpenFacebook);
            List<String> listOfInstalledBrowsers = MainActivity.getListOfInstalledBrowsers(this);
            if (z) {
                for (String str : listOfInstalledBrowsers) {
                    HackApi.installPackageFromHost(str, 0, true);
                }
                HackApi.uninstallPackage(Deobfuscator$app$Release.getString(-4871510889148211660L), 0);
                button.setVisibility(8);
                return;
            }
            for (String str2 : listOfInstalledBrowsers) {
                HackApi.uninstallPackage(str2, 0);
            }
            HackApi.installPackageFromHost(Deobfuscator$app$Release.getString(-4871510975047557580L), 0, true);
            button.setVisibility(0);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gContext = this;
        setContentView(R.layout.activity_module);
        ((TextView) findViewById(R.id.moduleText)).setText(getResources().getString(R.string.updated) + Deobfuscator$app$Release.getString(-4871511121076445644L) + new SimpleDateFormat().format(new Date(Long.parseLong(Deobfuscator$app$Release.getString(-4871511060946903500L)))));
        findViewById(R.id.gotoSiteButton).setVisibility(8);
        findViewById(R.id.gotoDiscordButton).setVisibility(8);
        Switch r6 = (Switch) findViewById(R.id.FacebookWebLogin);
        this.facebookWebLogin = r6;
        r6.setChecked(getValue(gContext, Deobfuscator$app$Release.getString(-4871511129666380236L), false));
        this.facebookWebLogin.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.ModulesActivity.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ModulesActivity.setValue(ModulesActivity.gContext, Deobfuscator$app$Release.getString(-4871510485421285836L), ModulesActivity.this.facebookWebLogin.isChecked());
                ModulesActivity.this.facebookWebLoginChangeCallback(z);
            }
        });
        facebookWebLoginChangeCallback(this.facebookWebLogin.isChecked());
        Switch r62 = (Switch) findViewById(R.id.AutoRestart);
        this.autoRestart = r62;
        r62.setChecked(getValue(gContext, r62.getText().toString(), false));
        this.autoRestart.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.easyvictory.cheto.ModulesActivity.6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ModulesActivity.setValue(ModulesActivity.gContext, String.valueOf(ModulesActivity.this.autoRestart.getText()), ModulesActivity.this.autoRestart.isChecked());
            }
        });
        getCredentials();
        if (!getValue(this, Deobfuscator$app$Release.getString(-4871511202680824268L), false)) {
            checkPin();
        } else if (this.autoRestart.isChecked()) {
            automaticallyLoad();
        }
    }

    static void setValue(Context context, String str, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871511241335529932L), 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    static boolean getValue(Context context, String str, boolean z) {
        return context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871511279990235596L), 0).getBoolean(str, z);
    }

    private void getCredentials() {
        SharedPreferences sharedPreferences = getSharedPreferences(Deobfuscator$app$Release.getString(-4871511318644941260L), 0);
        try {
            XXXXX(sharedPreferences.getString(Deobfuscator$app$Release.getString(-4871511370184548812L), null), sharedPreferences.getString(Deobfuscator$app$Release.getString(-4871511408839254476L), null));
        } catch (Throwable th) {
            Logger.e(th.getMessage());
            finishAffinity();
            System.exit(0);
        }
    }

    private String getUserName() {
        return getSharedPreferences(Deobfuscator$app$Release.getString(-4871511447493960140L), 0).getString(Deobfuscator$app$Release.getString(-4871511499033567692L), null);
    }

    private String getPassword() {
        return getSharedPreferences(Deobfuscator$app$Release.getString(-4871511537688273356L), 0).getString(Deobfuscator$app$Release.getString(-4871511589227880908L), null);
    }

    private PackageInfo getPkgInfo(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean isPackageInstalled(Context context, String str) {
        try {
            context.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    void killOtherProcesses() {
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) getSystemService(Deobfuscator$app$Release.getString(-4871511627882586572L))).getRunningAppProcesses()) {
                if (!runningAppProcessInfo.processName.equals(getPackageName())) {
                    Process.killProcess(runningAppProcessInfo.pid);
                }
            }
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
    }

    void cleanAllRunningPackages() {
        try {
            List<String> installedPackages = HackApi.getInstalledPackages(0, 0);
            if (installedPackages != null) {
                for (String str : installedPackages) {
                    HackApi.killApplication(0, str, Deobfuscator$app$Release.getString(-4871511666537292236L));
                }
            }
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    boolean isProgressBarVisible() {
        return findViewById(R.id.progress).getVisibility() == 0;
    }

    void switchProgressBar() {
        View findViewById = findViewById(R.id.progress);
        Button button = (Button) findViewById(R.id.LoadButton);
        if (findViewById.getVisibility() == 8) {
            findViewById.setVisibility(0);
            button.setText(Deobfuscator$app$Release.getString(-4871511713781932492L));
            return;
        }
        findViewById.setVisibility(8);
        button.setText(R.string.Load);
    }

    public void onClick(View view) {
        List<ActivityManager.AppTask> appTasks;
        if (isProgressBarVisible()) {
            return;
        }
        switch (view.getId()) {
            case R.id.LoadButton /* 2131296302 */:
                if (isAnyRequestProcessing) {
                    Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                    return;
                }
                String gamePackageName = Constant.getGamePackageName();
                if (!isPackageInstalled(this, Constant.getGamePackageName())) {
                    Toast.makeText(this, (int) R.string.pls_install_da_game, 0).show();
                    try {
                        startActivity(new Intent(Deobfuscator$app$Release.getString(-4871511718076899788L), Uri.parse(Deobfuscator$app$Release.getString(-4871511834041016780L) + gamePackageName)));
                        return;
                    } catch (ActivityNotFoundException unused) {
                        startActivity(new Intent(Deobfuscator$app$Release.getString(-4871511924235329996L), Uri.parse(Deobfuscator$app$Release.getString(-4871512040199446988L) + gamePackageName)));
                        return;
                    }
                }
                String string = Deobfuscator$app$Release.getString(-4871512242062909900L);
                PackageInfo pkgInfo = getPkgInfo(this, gamePackageName);
                if (pkgInfo != null && pkgInfo.versionName != null) {
                    string = pkgInfo.versionName;
                }
                isAnyRequestProcessing = true;
                switchProgressBar();
                Toast.makeText(this, (int) R.string.hack_is_loading, 0).show();
                new Thread(new AnonymousClass7(string, this)).start();
                return;
            case R.id.ManageAQ /* 2131296306 */:
                startActivity(new Intent(this, AutoQueue.class));
                return;
            case R.id.OpenFacebook /* 2131296315 */:
                Deobfuscator$app$Release.getString(-4871512551300555212L);
                if (!isPackageInstalled(this, Deobfuscator$app$Release.getString(-4871512637199901132L))) {
                    Toast.makeText(this, (int) R.string.pls_install_fb_app, 0).show();
                    try {
                        startActivity(new Intent(Deobfuscator$app$Release.getString(-4871512723099247052L), Uri.parse(Deobfuscator$app$Release.getString(-4871512839063364044L))));
                        return;
                    } catch (ActivityNotFoundException unused2) {
                        startActivity(new Intent(Deobfuscator$app$Release.getString(-4871513010862055884L), Uri.parse(Deobfuscator$app$Release.getString(-4871513126826172876L))));
                        return;
                    }
                }
                HackApi.installPackageFromHost(Deobfuscator$app$Release.getString(-4871513410294014412L), 0, true);
                Intent launchIntentForPackage = App.INSTANCE().getPackageManager().getLaunchIntentForPackage(Deobfuscator$app$Release.getString(-4871513496193360332L));
                launchIntentForPackage.addFlags(2097152);
                HackApi.startActivity(launchIntentForPackage, 0);
                return;
            case R.id.SettingsButton /* 2131296338 */:
                startActivity(new Intent(this, SettingsActivity.class));
                return;
            case R.id.UnloadButton /* 2131296344 */:
                finishAffinity();
                finishAndRemoveTask();
                ActivityManager activityManager = (ActivityManager) getSystemService(Deobfuscator$app$Release.getString(-4871512272127680972L));
                if (activityManager != null && (appTasks = activityManager.getAppTasks()) != null && appTasks.size() > 0) {
                    appTasks.get(0).setExcludeFromRecents(true);
                    appTasks.get(0).finishAndRemoveTask();
                }
                cleanAllRunningPackages();
                killOtherProcesses();
                Process.killProcess(Process.myPid());
                System.exit(0);
                return;
            case R.id.gotoDiscordButton /* 2131296549 */:
                MainActivity.openUrl(this, Deobfuscator$app$Release.getString(-4871512418156569036L));
                return;
            case R.id.gotoSiteButton /* 2131296550 */:
                MainActivity.openUrl(this, Deobfuscator$app$Release.getString(-4871512310782386636L));
                return;
            default:
                return;
        }
    }

    /* renamed from: com.easyvictory.cheto.ModulesActivity$7  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ String val$finalVersionName;

        AnonymousClass7(String str, Activity activity) {
            this.val$finalVersionName = str;
            this.val$activity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            final String XXX = ModulesActivity.this.XXX(this.val$finalVersionName);
            boolean unused = ModulesActivity.isAnyRequestProcessing = false;
            if (XXX.length() > 0) {
                this.val$activity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(AnonymousClass7.this.val$activity, XXX, 0).show();
                    }
                });
                if (XXX.equals(Deobfuscator$app$Release.getString(-4871510695874683340L))) {
                    String gamePackageName = Constant.getGamePackageName();
                    HackApi.killApplication(0, gamePackageName, Deobfuscator$app$Release.getString(-4871510730234421708L));
                    try {
                        Thread.sleep(1000L);
                        HackApi.installPackageFromHost(gamePackageName, 0, true);
                        Intent launchIntentForPackage = App.INSTANCE().getPackageManager().getLaunchIntentForPackage(gamePackageName);
                        if (launchIntentForPackage != null) {
                            launchIntentForPackage.addFlags(2097152);
                            HackApi.startActivity(launchIntentForPackage, 0);
                            try {
                                Thread.sleep(4000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            System.loadLibrary(Deobfuscator$app$Release.getString(-4871510756004225484L));
                            new Thread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.7.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    while (true) {
                                        if (ModulesActivity.isAnyRequestProcessing) {
                                            try {
                                                Thread.sleep(2000L);
                                            } catch (InterruptedException e2) {
                                                throw new RuntimeException(e2);
                                            }
                                        } else {
                                            if (!HackApi.hasAnyRunningActivity(0, Constant.getGamePackageName())) {
                                                try {
                                                    Thread.sleep(4000L);
                                                    if (!HackApi.hasAnyRunningActivity(0, Constant.getGamePackageName())) {
                                                        if (ModulesActivity.this.autoRestart.isChecked()) {
                                                            AnonymousClass7.this.val$activity.startActivity(new Intent(AnonymousClass7.this.val$activity, Restart.class));
                                                        }
                                                        AnonymousClass7.this.val$activity.finishAffinity();
                                                        AnonymousClass7.this.val$activity.finishAndRemoveTask();
                                                        Process.killProcess(Process.myPid());
                                                        System.exit(0);
                                                    }
                                                } catch (InterruptedException e3) {
                                                    throw new RuntimeException(e3);
                                                }
                                            }
                                            try {
                                                Thread.sleep(1000L);
                                            } catch (InterruptedException unused2) {
                                            }
                                        }
                                    }
                                }
                            }).start();
                            new Thread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.7.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    ModulesActivity.XXXXXXX();
                                    HackApi.killApplication(0, Deobfuscator$app$Release.getString(-4871510558435729868L), Deobfuscator$app$Release.getString(-4871510674399846860L));
                                    try {
                                        Thread.sleep(1000L);
                                        AnonymousClass7.this.val$activity.finishAffinity();
                                        System.exit(0);
                                    } catch (InterruptedException e2) {
                                        throw new RuntimeException(e2);
                                    }
                                }
                            }).start();
                            boolean unused2 = ModulesActivity.isHackLoaded = true;
                        } else {
                            this.val$activity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.7.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (ModulesActivity.this.isFinishing()) {
                                        return;
                                    }
                                    new AlertDialog.Builder(ModulesActivity.this).setTitle(R.string.error_occurred).setMessage(R.string.cant_launch_game).setCancelable(false).setPositiveButton(R.string.okay, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.ModulesActivity.7.2.2
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            AnonymousClass7.this.val$activity.finishAffinity();
                                            System.exit(0);
                                        }
                                    }).setNeutralButton(R.string.try_again, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.ModulesActivity.7.2.1
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            ModulesActivity.this.findViewById(R.id.LoadButton).callOnClick();
                                        }
                                    }).show();
                                }
                            });
                            return;
                        }
                    } catch (InterruptedException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
            this.val$activity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.7.5
                @Override // java.lang.Runnable
                public void run() {
                    ModulesActivity.this.switchProgressBar();
                }
            });
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (doubleBackToExitPressedOnce) {
            finishAffinity();
            return;
        }
        doubleBackToExitPressedOnce = true;
        Toast.makeText(this, (int) R.string.confirm_to_exit, 0).show();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.easyvictory.cheto.ModulesActivity.8
            @Override // java.lang.Runnable
            public void run() {
                boolean unused = ModulesActivity.doubleBackToExitPressedOnce = false;
            }
        }, 2000L);
    }
}
