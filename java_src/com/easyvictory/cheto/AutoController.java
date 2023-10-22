package com.easyvictory.cheto;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.core.view.PointerIconCompat;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class AutoController {
    private static AutoController Instance;
    private ImageView autoControllerLogo;
    private Context context = null;
    public View floatingView;
    private boolean isOn;
    public View logoView;
    private WindowManager windowManager;

    public native void SettingValue(int i, boolean z);

    public static AutoController getInstance() {
        if (Instance == null) {
            Instance = new AutoController();
        }
        return Instance;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return this.context;
    }

    private int getIntValue(String str) {
        return this.context.getSharedPreferences(Deobfuscator$app$Release.getString(-4871488851671015884L), 0).getInt(str, 0);
    }

    public void onCreate(View view) {
        try {
            this.isOn = true;
            this.floatingView = view;
            this.windowManager = (WindowManager) this.context.getSystemService(Deobfuscator$app$Release.getString(-4871488890325721548L));
            createOver();
            this.logoView = view.findViewById(R.id.relativeLayoutParent2);
            this.autoControllerLogo = (ImageView) view.findViewById(R.id.auto_controller_logo);
            if (getIntValue(Deobfuscator$app$Release.getString(-4871488920390492620L)) == 0) {
                view.setVisibility(8);
            }
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
    }

    static void enableAutoPlay(boolean z) {
        AutoController autoController = getInstance();
        if (z) {
            autoController.SettingValueWrapper(0, true);
            autoController.autoControllerLogo.setImageResource(R.drawable.stop_auto);
        } else {
            autoController.SettingValueWrapper(0, false);
            autoController.autoControllerLogo.setImageResource(R.drawable.start_auto);
        }
        autoController.isOn = z;
    }

    void createOver() {
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, (int) (Utils.getScreenWidth(this.context) / 2.0f), Utils.getScreenHeight(this.context), PointerIconCompat.TYPE_HAND, 8, 1);
        try {
            Record.setFakeRecorderWindowLayoutParams(layoutParams);
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
        try {
            this.windowManager.addView(this.floatingView, layoutParams);
        } catch (Throwable th2) {
            Log.e(Deobfuscator$app$Release.getString(-4871488967635132876L), th2.getMessage());
        }
        final GestureDetector gestureDetector = new GestureDetector(this.context, new SingleTapConfirm2());
        this.floatingView.findViewById(R.id.relativeLayoutParent2).setOnTouchListener(new View.OnTouchListener() { // from class: com.easyvictory.cheto.AutoController.1
            private float initialTouchX;
            private float initialTouchY;
            private int initialX;
            private int initialY;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (gestureDetector.onTouchEvent(motionEvent)) {
                    try {
                        if (!AutoController.this.isOn) {
                            AutoController.this.SettingValueWrapper(0, true);
                            AutoController.this.autoControllerLogo.setImageResource(R.drawable.stop_auto);
                        } else {
                            AutoController.this.SettingValueWrapper(0, false);
                            AutoController.this.autoControllerLogo.setImageResource(R.drawable.start_auto);
                        }
                        AutoController autoController = AutoController.this;
                        autoController.isOn = autoController.isOn ? false : true;
                    } catch (Throwable th3) {
                        Logger.e(th3.getMessage());
                    }
                    return true;
                }
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.initialX = layoutParams.x;
                    this.initialY = layoutParams.y;
                    this.initialTouchX = motionEvent.getRawX();
                    this.initialTouchY = motionEvent.getRawY();
                    return true;
                }
                if (action == 1) {
                    Point screenSize = Utils.getScreenSize(AutoController.this.context);
                    int i = (int) (screenSize.x / 2.0f);
                    int i2 = (int) (screenSize.y / 2.0f);
                    if (layoutParams.y < i2 - view.getHeight() && layoutParams.y > (-(i2 - view.getHeight()))) {
                        if (layoutParams.x > 0) {
                            layoutParams.x = i;
                        } else {
                            layoutParams.x = -i;
                        }
                        AutoController.this.windowManager.updateViewLayout(AutoController.this.floatingView, layoutParams);
                        return true;
                    }
                } else if (action == 2) {
                    layoutParams.x = this.initialX + ((int) (motionEvent.getRawX() - this.initialTouchX));
                    layoutParams.y = this.initialY + ((int) (motionEvent.getRawY() - this.initialTouchY));
                    AutoController.this.windowManager.updateViewLayout(AutoController.this.floatingView, layoutParams);
                    return true;
                }
                return false;
            }
        });
    }

    boolean SettingValueWrapper(int i, boolean z) {
        try {
            SettingValue(i, z);
            return true;
        } catch (Throwable th) {
            Logger.e(th.getMessage());
            System.exit(0);
            return false;
        }
    }
}
