package com.hack.server.core.transact;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import com.hack.opensdk.HackApi;
/* loaded from: classes2.dex */
public class TransactActivityLifecycle implements Application.ActivityLifecycleCallbacks {
    public static final TransactActivityLifecycle INSTANCE = new TransactActivityLifecycle();
    private static final String TAG = "TransactActivityLifecycle";

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
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
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity.isTaskRoot()) {
            fixTaskDescription(activity);
        }
    }

    private boolean fixTaskDescription(Activity activity) {
        Bitmap bitmap;
        int intValue = ((Integer) HackApi.getRuntimeProperty("space", 0)).intValue();
        ActivityInfo activityInfo = HackApi.getActivityInfo(new ComponentName(activity.getPackageName(), activity.getClass().getName()), 0, intValue);
        if (activityInfo == null) {
            Log.e(TAG, "fixTaskDescription: fail");
            return false;
        }
        PackageManager packageManager = activity.getPackageManager();
        Drawable loadIcon = activityInfo.loadIcon(packageManager);
        String valueOf = String.valueOf(activityInfo.loadLabel(packageManager));
        if (intValue != 0) {
            valueOf = valueOf + "(" + (intValue + 1) + ")";
        }
        if (loadIcon instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) loadIcon).getBitmap();
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(loadIcon.getIntrinsicWidth(), loadIcon.getIntrinsicHeight(), loadIcon.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            loadIcon.setBounds(0, 0, loadIcon.getIntrinsicWidth(), loadIcon.getIntrinsicHeight());
            loadIcon.draw(canvas);
            bitmap = createBitmap;
        }
        activity.setTaskDescription(new ActivityManager.TaskDescription(valueOf, bitmap));
        return true;
    }
}
