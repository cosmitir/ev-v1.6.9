package com.easyvictory.cheto;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.easyvictory.cheto.utils.ShellUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.hack.opensdk.HackApi;
import com.hack.opensdk.HackApplication;
import dalvik.system.PathClassLoader;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Iterator;
/* loaded from: classes.dex */
public class App extends HackApplication {
    private static String angleStepSizeText;
    private static View controllerView;
    private static Activity currentActivity;
    private static View floatingView;
    private static String lineThicknessText;
    private static String lineTransparencyText;
    public static FirebaseAnalytics mFirebaseAnalytics;
    private static String predictionDrawPowerText;
    private static App sInstance;
    final String TAG = Deobfuscator$app$Release.getString(-4871487979792654796L);

    static {
        System.loadLibrary(Deobfuscator$app$Release.getString(-4871488830196179404L));
        currentActivity = null;
    }

    private void startLogcat() {
        new Thread(new Runnable() { // from class: com.easyvictory.cheto.App.1
            @Override // java.lang.Runnable
            public void run() {
                File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), App.this.getPackageName() + Deobfuscator$app$Release.getString(-4871487425741873612L));
                ShellUtils.execCommand(Deobfuscator$app$Release.getString(-4871487477281481164L), false);
                ShellUtils.execCommand(Deobfuscator$app$Release.getString(-4871487520231154124L) + file.getAbsolutePath(), false);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getProcessName(Context context) {
        String str;
        int myPid = Process.myPid();
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService(Deobfuscator$app$Release.getString(-4871488035627229644L))).getRunningAppProcesses().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == myPid) {
                str = next.processName;
                break;
            }
        }
        if (str != null) {
            return str;
        }
        throw new RuntimeException(Deobfuscator$app$Release.getString(-4871488074281935308L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.hack.opensdk.HackApplication, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        startLogcat();
        sInstance = this;
        mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);
    }

    private void initSpinnersSelections() {
        String[] strArr = {Deobfuscator$app$Release.getString(-4871488155886313932L) + getResources().getText(R.string.nothing).toString(), Deobfuscator$app$Release.getString(-4871488164476248524L) + getResources().getText(R.string.auto_aim).toString(), Deobfuscator$app$Release.getString(-4871488173066183116L) + getResources().getText(R.string.auto_play).toString()};
        Spinner spinner = (Spinner) floatingView.findViewById(R.id.AutoAction);
        ArrayAdapter arrayAdapter = new ArrayAdapter(INSTANCE(), (int) R.layout.simple_list_item_1, strArr);
        arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setSelection(0);
        String[] strArr2 = {Deobfuscator$app$Release.getString(-4871488181656117708L), Deobfuscator$app$Release.getString(-4871488207425921484L), Deobfuscator$app$Release.getString(-4871488233195725260L), Deobfuscator$app$Release.getString(-4871488276145398220L)};
        Spinner spinner2 = (Spinner) floatingView.findViewById(R.id.AQMode);
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(INSTANCE(), (int) R.layout.simple_list_item_1, strArr2);
        arrayAdapter2.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        spinner2.setAdapter((SpinnerAdapter) arrayAdapter2);
        spinner2.setSelection(0);
        String[] strArr3 = {Deobfuscator$app$Release.getString(-4871488331979973068L), Deobfuscator$app$Release.getString(-4871488392109515212L), Deobfuscator$app$Release.getString(-4871488439354155468L)};
        Spinner spinner3 = (Spinner) floatingView.findViewById(R.id.AQHumanizationMode);
        ArrayAdapter arrayAdapter3 = new ArrayAdapter(INSTANCE(), (int) R.layout.simple_list_item_1, strArr3);
        arrayAdapter3.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        spinner3.setAdapter((SpinnerAdapter) arrayAdapter3);
        spinner3.setSelection(0);
    }

    @Override // com.hack.opensdk.HackApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        floatingView = LayoutInflater.from(INSTANCE()).inflate(R.layout.float_logo, (ViewGroup) null);
        controllerView = LayoutInflater.from(INSTANCE()).inflate(R.layout.auto_controller, (ViewGroup) null);
        initSpinnersSelections();
        monitorApplicationEvent();
        predictionDrawPowerText = getResources().getText(R.string.prediction_draw_power).toString();
        lineThicknessText = getResources().getText(R.string.line_thickness).toString();
        lineTransparencyText = getResources().getText(R.string.line_transparency).toString();
        angleStepSizeText = getResources().getText(R.string.angle_step_size).toString();
    }

    public static App INSTANCE() {
        return sInstance;
    }

    private void monitorApplicationEvent() {
        registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.easyvictory.cheto.App.2
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                Activity unused = App.currentActivity = activity;
                if (App.currentActivity != null) {
                    App.this.setCurrentActivityName(App.INSTANCE(), App.currentActivity.getLocalClassName());
                }
            }
        });
        HackApi.registerApplicationCallback(new HackApi.ApplicationCallback() { // from class: com.easyvictory.cheto.App.3
            @Override // com.hack.opensdk.HackApi.ApplicationCallback
            public void onAttachBaseContext(Application application) {
            }

            @Override // com.hack.opensdk.HackApi.ApplicationCallback
            public void onCreate(Application application) {
            }

            @Override // com.hack.opensdk.HackApi.ApplicationCallback
            public void onInstallProviders(Application application) {
            }

            @Override // com.hack.opensdk.HackApi.ApplicationCallback
            public void onInitAppContext(Object obj, Context context) {
                Logger.e(Deobfuscator$app$Release.getString(-4871487606130500044L) + obj + Deobfuscator$app$Release.getString(-4871487683439911372L) + context);
                String currentActivityName = App.this.getCurrentActivityName(App.INSTANCE());
                if ((currentActivityName == null || !currentActivityName.equals(Deobfuscator$app$Release.getString(-4871487692029845964L))) && context != null) {
                    String str = App.INSTANCE().getApplicationInfo().nativeLibraryDir;
                    if (App.getProcessName(context).equals(Deobfuscator$app$Release.getString(-4871487747864420812L))) {
                        try {
                            Class loadClass = new PathClassLoader(App.INSTANCE().getApplicationInfo().sourceDir, context.getClassLoader()).loadClass(Entry.class.getName());
                            Object newInstance = loadClass.newInstance();
                            Method declaredMethod = loadClass.getDeclaredMethod(Deobfuscator$app$Release.getString(-4871487863828537804L), Context.class, View.class, View.class, String.class, String.class, String.class, String.class, String.class);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(newInstance, context, App.floatingView, App.controllerView, str, App.predictionDrawPowerText, App.lineThicknessText, App.lineTransparencyText, App.angleStepSizeText);
                        } catch (Throwable th) {
                            Logger.e(Deobfuscator$app$Release.getString(-4871487941137949132L) + th.getMessage());
                            th.printStackTrace();
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentActivityName(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871488533843435980L), 0).edit();
        edit.putString(Deobfuscator$app$Release.getString(-4871488585383043532L), str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentActivityName(Context context) {
        return context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871488654102520268L), 0).getString(Deobfuscator$app$Release.getString(-4871488705642127820L), Deobfuscator$app$Release.getString(-4871488774361604556L));
    }
}
