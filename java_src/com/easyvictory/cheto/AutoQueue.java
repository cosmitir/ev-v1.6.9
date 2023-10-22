package com.easyvictory.cheto;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
/* loaded from: classes.dex */
public class AutoQueue extends AppCompatActivity {
    private static boolean isAnyRequestProcessing = false;
    ProgressDialog progressDialog = null;
    Handler handle = new Handler() { // from class: com.easyvictory.cheto.AutoQueue.4
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            AutoQueue.this.progressDialog.setProgress(AutoQueue.this.XXXXXX());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXX();

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXX(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXXX();

    /* JADX INFO: Access modifiers changed from: private */
    public native int XXXXXX();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_auto_queue);
        findViewById(R.id.loadingPanel).setVisibility(8);
        ((TextView) findViewById(R.id.RemainingDaysText)).setText(((Object) getResources().getText(R.string.remaining_time)) + ":\n " + XXX());
    }

    public void onClick(View view) {
        if (findViewById(R.id.loadingPanel).getVisibility() == 0) {
            return;
        }
        int id = view.getId();
        if (id == R.id.BackButton) {
            super.finish();
        } else if (id == R.id.DownloadAQ) {
            if (isAnyRequestProcessing) {
                Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                return;
            }
            isAnyRequestProcessing = true;
            findViewById(R.id.loadingPanel).setVisibility(0);
            new Thread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.2
                @Override // java.lang.Runnable
                public void run() {
                    final AutoQueue autoQueue = AutoQueue.this;
                    final String XXXXX = autoQueue.XXXXX();
                    if (AutoQueue.this.XXXXXX() != 100) {
                        while (AutoQueue.this.progressDialog == null) {
                            try {
                                Thread.sleep(100L);
                            } catch (InterruptedException e) {
                                throw new RuntimeException(e);
                            }
                        }
                        AutoQueue.this.progressDialog.setProgress(100);
                    }
                    boolean unused = AutoQueue.isAnyRequestProcessing = false;
                    if (XXXXX.length() > 0) {
                        autoQueue.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(autoQueue, XXXXX, 0).show();
                            }
                        });
                    }
                    autoQueue.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AutoQueue.this.findViewById(R.id.loadingPanel).setVisibility(8);
                        }
                    });
                }
            }).start();
            new Thread(new AnonymousClass3()).start();
        } else if (id != R.id.RedeemKeyButton) {
        } else {
            if (isAnyRequestProcessing) {
                Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                return;
            }
            final String obj = ((EditText) findViewById(R.id.SubKeyInput)).getText().toString();
            isAnyRequestProcessing = true;
            findViewById(R.id.loadingPanel).setVisibility(0);
            new Thread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.1
                @Override // java.lang.Runnable
                public void run() {
                    final AutoQueue autoQueue = AutoQueue.this;
                    final String XXXX = autoQueue.XXXX(obj);
                    boolean unused = AutoQueue.isAnyRequestProcessing = false;
                    if (XXXX.length() > 0) {
                        autoQueue.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(autoQueue, XXXX, 0).show();
                            }
                        });
                        if (XXXX.equals("Success")) {
                            ((TextView) AutoQueue.this.findViewById(R.id.RemainingDaysText)).setText(((Object) AutoQueue.this.getResources().getText(R.string.remaining_time)) + ":\n " + AutoQueue.this.XXX());
                        }
                    }
                    autoQueue.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AutoQueue.this.findViewById(R.id.loadingPanel).setVisibility(8);
                        }
                    });
                }
            }).start();
        }
    }

    /* renamed from: com.easyvictory.cheto.AutoQueue$3  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(100L);
                AutoQueue.this.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AutoQueue.this.progressDialog = new ProgressDialog(AutoQueue.this);
                        AutoQueue.this.progressDialog.setMax(100);
                        AutoQueue.this.progressDialog.setMessage("Downloading....");
                        AutoQueue.this.progressDialog.setTitle("AutoQueue");
                        AutoQueue.this.progressDialog.setProgressStyle(1);
                        AutoQueue.this.progressDialog.show();
                        new Thread(new Runnable() { // from class: com.easyvictory.cheto.AutoQueue.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                while (AutoQueue.this.progressDialog.getProgress() < AutoQueue.this.progressDialog.getMax()) {
                                    try {
                                        Thread.sleep(50L);
                                        AutoQueue.this.handle.sendMessage(AutoQueue.this.handle.obtainMessage());
                                        if (AutoQueue.this.progressDialog.getProgress() == AutoQueue.this.progressDialog.getMax()) {
                                            AutoQueue.this.progressDialog.dismiss();
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        return;
                                    }
                                }
                            }
                        }).start();
                    }
                });
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
