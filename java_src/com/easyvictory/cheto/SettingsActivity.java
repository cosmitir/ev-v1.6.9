package com.easyvictory.cheto;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class SettingsActivity extends AppCompatActivity {
    private static boolean isAnyRequestProcessing = false;

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXX();

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXX(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXXX(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXXXX(String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXXXXX();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_settings);
        findViewById(R.id.loadingPanel).setVisibility(8);
        ((TextView) findViewById(R.id.RemainingDaysText)).setText(((Object) getResources().getText(R.string.remaining_time)) + Deobfuscator$app$Release.getString(-4871513753891398092L) + XXX());
    }

    public void onClick(View view) {
        if (findViewById(R.id.loadingPanel).getVisibility() == 0) {
            return;
        }
        switch (view.getId()) {
            case R.id.BackButton /* 2131296270 */:
                super.finish();
                return;
            case R.id.EditPIN /* 2131296284 */:
                ModulesActivity.showPinInputDialog(this);
                return;
            case R.id.RedeemKeyButton /* 2131296326 */:
                if (isAnyRequestProcessing) {
                    Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                    return;
                }
                final String obj = ((EditText) findViewById(R.id.SubKeyInput)).getText().toString();
                isAnyRequestProcessing = true;
                findViewById(R.id.loadingPanel).setVisibility(0);
                new Thread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final SettingsActivity settingsActivity = SettingsActivity.this;
                        final String XXXX = settingsActivity.XXXX(obj);
                        boolean unused = SettingsActivity.isAnyRequestProcessing = false;
                        if (XXXX.length() > 0) {
                            settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Toast.makeText(settingsActivity, XXXX, 0).show();
                                }
                            });
                            if (XXXX.equals(Deobfuscator$app$Release.getString(-4871513702351790540L))) {
                                ((TextView) SettingsActivity.this.findViewById(R.id.RemainingDaysText)).setText(((Object) SettingsActivity.this.getResources().getText(R.string.remaining_time)) + Deobfuscator$app$Release.getString(-4871513736711528908L) + SettingsActivity.this.XXX());
                            }
                        }
                        settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SettingsActivity.this.findViewById(R.id.loadingPanel).setVisibility(8);
                            }
                        });
                    }
                }).start();
                return;
            case R.id.ResetHwidButton /* 2131296330 */:
                if (isAnyRequestProcessing) {
                    Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                    return;
                }
                isAnyRequestProcessing = true;
                findViewById(R.id.loadingPanel).setVisibility(0);
                new Thread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        final SettingsActivity settingsActivity = SettingsActivity.this;
                        final String XXXXXXX = settingsActivity.XXXXXXX();
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        boolean unused = SettingsActivity.isAnyRequestProcessing = false;
                        if (XXXXXXX.length() > 0) {
                            settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Toast.makeText(settingsActivity, XXXXXXX, 0).show();
                                }
                            });
                        }
                        settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.4.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SettingsActivity.this.findViewById(R.id.loadingPanel).setVisibility(8);
                            }
                        });
                    }
                }).start();
                return;
            case R.id.UpdatePasswordButton /* 2131296345 */:
                if (isAnyRequestProcessing) {
                    Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                    return;
                }
                final String obj2 = ((EditText) findViewById(R.id.PasswordInput)).getText().toString();
                if (!obj2.equals(((EditText) findViewById(R.id.PasswordConfirmationInput)).getText().toString())) {
                    Toast.makeText(this, (int) R.string.passwords_dont_match, 0).show();
                    return;
                }
                isAnyRequestProcessing = true;
                findViewById(R.id.loadingPanel).setVisibility(0);
                new Thread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        final SettingsActivity settingsActivity = SettingsActivity.this;
                        final String XXXXX = settingsActivity.XXXXX(obj2);
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        boolean unused = SettingsActivity.isAnyRequestProcessing = false;
                        if (XXXXX.length() > 0) {
                            settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Toast.makeText(settingsActivity, XXXXX, 0).show();
                                }
                            });
                        }
                        settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SettingsActivity.this.findViewById(R.id.loadingPanel).setVisibility(8);
                            }
                        });
                    }
                }).start();
                return;
            case R.id.UpdateSecurityQASButton /* 2131296346 */:
                if (isAnyRequestProcessing) {
                    Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                    return;
                }
                final String obj3 = ((EditText) findViewById(R.id.SecurityQuestionInput)).getText().toString();
                final String obj4 = ((EditText) findViewById(R.id.SecurityAnswerInput)).getText().toString();
                isAnyRequestProcessing = true;
                findViewById(R.id.loadingPanel).setVisibility(0);
                new Thread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        final SettingsActivity settingsActivity = SettingsActivity.this;
                        final String XXXXXX = settingsActivity.XXXXXX(obj3, obj4);
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        boolean unused = SettingsActivity.isAnyRequestProcessing = false;
                        if (XXXXXX.length() > 0) {
                            settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Toast.makeText(settingsActivity, XXXXXX, 0).show();
                                }
                            });
                        }
                        settingsActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.SettingsActivity.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SettingsActivity.this.findViewById(R.id.loadingPanel).setVisibility(8);
                            }
                        });
                    }
                }).start();
                return;
            default:
                return;
        }
    }
}
