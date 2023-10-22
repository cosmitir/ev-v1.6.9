package com.easyvictory.cheto;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.os.Process;
import android.view.View;
import android.view.WindowManager;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes.dex */
public class ESPView extends View implements Runnable {
    static long sleepTime;
    int FPS;
    SimpleDateFormat formatter;
    Paint mFilledPaint;
    Paint mStrokePaint;
    Paint mTextPaint;
    Thread mThread;
    Date time;
    WindowManager windowManager;

    public static void ChangeFps(int i) {
        sleepTime = 1000 / (i + 20);
    }

    public ESPView(Context context, WindowManager windowManager) {
        super(context, null, 0);
        this.FPS = 60;
        this.windowManager = windowManager;
        InitializePaints();
        setFocusableInTouchMode(false);
        setBackgroundColor(0);
        this.time = new Date();
        this.formatter = new SimpleDateFormat(Deobfuscator$app$Release.getString(-4871493043559096780L), Locale.getDefault());
        sleepTime = 1000 / this.FPS;
        Thread thread = new Thread(this);
        this.mThread = thread;
        thread.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas == null || getVisibility() != 0) {
            return;
        }
        ClearCanvas(canvas);
        Entry.draw(this, canvas);
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (this.mThread.isAlive() && !this.mThread.isInterrupted()) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                postInvalidate();
                Thread.sleep(Math.max(Math.min(0L, sleepTime - (System.currentTimeMillis() - currentTimeMillis)), sleepTime));
            } catch (Exception unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    public void InitializePaints() {
        Paint paint = new Paint();
        this.mStrokePaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.mStrokePaint.setAntiAlias(true);
        this.mStrokePaint.setColor(Color.rgb(0, 0, 0));
        Paint paint2 = new Paint();
        this.mFilledPaint = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.mFilledPaint.setAntiAlias(true);
        this.mFilledPaint.setColor(Color.rgb(0, 0, 0));
        Paint paint3 = new Paint();
        this.mTextPaint = paint3;
        paint3.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setColor(Color.rgb(0, 0, 0));
        this.mTextPaint.setTextAlign(Paint.Align.CENTER);
        this.mTextPaint.setStrokeWidth(1.1f);
    }

    public void ClearCanvas(Canvas canvas) {
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
    }

    public void DrawLine(Canvas canvas, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4, float f5) {
        this.mStrokePaint.setColor(Color.rgb(i2, i3, i4));
        this.mStrokePaint.setAlpha(i);
        this.mStrokePaint.setStrokeWidth(f);
        canvas.drawLine(f2, f3, f4, f5, this.mStrokePaint);
    }

    public void DrawRect(Canvas canvas, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4, float f5) {
        this.mStrokePaint.setStrokeWidth(f);
        this.mStrokePaint.setColor(Color.rgb(i2, i3, i4));
        this.mStrokePaint.setAlpha(i);
        canvas.drawRect(f2, f3, f4, f5, this.mStrokePaint);
    }

    public void DrawFilledRect(Canvas canvas, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
        this.mFilledPaint.setColor(Color.rgb(i2, i3, i4));
        this.mFilledPaint.setAlpha(i);
        canvas.drawRect(f, f2, f3, f4, this.mFilledPaint);
    }

    public void DrawText(Canvas canvas, int i, int i2, int i3, int i4, String str, float f, float f2, float f3) {
        this.mTextPaint.setARGB(i, i2, i3, i4);
        this.mTextPaint.setTextSize(f3);
        canvas.drawText(str, f, f2, this.mTextPaint);
    }

    public void DrawCircle(Canvas canvas, int i, int i2, int i3, int i4, float f, float f2, float f3) {
        this.mStrokePaint.setColor(Color.rgb(i2, i3, i4));
        this.mStrokePaint.setAlpha(i);
        this.mStrokePaint.setStyle(Paint.Style.STROKE);
        this.mStrokePaint.setStrokeWidth(8.0f);
        canvas.drawCircle(f, f2, f3, this.mStrokePaint);
    }

    public void DrawFilledCircle(Canvas canvas, int i, int i2, int i3, int i4, float f, float f2, float f3) {
        this.mFilledPaint.setColor(Color.rgb(i2, i3, i4));
        this.mFilledPaint.setAlpha(i);
        this.mFilledPaint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f, f2, f3, this.mFilledPaint);
    }
}
