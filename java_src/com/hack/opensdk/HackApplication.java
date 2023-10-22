package com.hack.opensdk;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes2.dex */
public class HackApplication extends Application {
    private static final boolean DEBUG = false;
    private static final String TAG = "HackApplication";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        Context createPackageContext;
        super.attachBaseContext(context);
        if (TextUtils.equals(context.getPackageName(), "com.easyvictory.cheto")) {
            context.getSharedPreferences("hack", 0).edit().putString("sp.assist.pkg", BuildConfig.ASSIST_PACKAGE).commit();
        } else {
            try {
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                Log.e(TAG, "master package not install ");
            }
            if (context.getPackageManager().getPackageInfo("com.easyvictory.cheto", 0).applicationInfo.uid == Process.myUid()) {
                createPackageContext = context.createPackageContext("com.easyvictory.cheto", 0);
                HackRuntime.install(createPackageContext, "version", true);
                Cmd.INSTANCE().exec(1, this, context);
            }
        }
        createPackageContext = context;
        HackRuntime.install(createPackageContext, "version", true);
        Cmd.INSTANCE().exec(1, this, context);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Cmd.INSTANCE().exec(2, new Object[0]);
    }
}
