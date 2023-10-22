package com.easyvictory.cheto;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class FPActivity extends AppCompatActivity {
    private static boolean isAnyRequestProcessing = false;
    private EditText passwordConfirmationInput;
    private EditText passwordInput;
    private EditText pinInput;
    private EditText securityAnswerInput;
    private EditText securityQuestionInput;
    private EditText usernameInput;

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXX(String str, String str2, String str3, String str4);

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXX(String str, String str2, String str3);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_forgot_password);
        this.usernameInput = (EditText) findViewById(R.id.usernameInput);
        this.passwordInput = (EditText) findViewById(R.id.password);
        this.passwordConfirmationInput = (EditText) findViewById(R.id.passwordConfirmation);
        this.securityQuestionInput = (EditText) findViewById(R.id.securityQuestion);
        this.securityAnswerInput = (EditText) findViewById(R.id.securityAnswer);
        this.pinInput = (EditText) findViewById(R.id.PinInput);
        createOver();
        findViewById(R.id.loadingPanel).setVisibility(8);
    }

    void createOver() {
        final TextView textView = (TextView) findViewById(R.id.UsePinInstead);
        final TextView textView2 = (TextView) findViewById(R.id.UseSecurityQAA);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FPActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textView2.setVisibility(0);
                FPActivity.this.securityQuestionInput.setVisibility(8);
                FPActivity.this.securityAnswerInput.setVisibility(8);
                FPActivity.this.pinInput.setVisibility(0);
                textView.setVisibility(8);
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.FPActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textView2.setVisibility(8);
                FPActivity.this.securityQuestionInput.setVisibility(0);
                FPActivity.this.securityAnswerInput.setVisibility(0);
                FPActivity.this.pinInput.setVisibility(8);
                textView.setVisibility(0);
            }
        });
    }

    public void onClick(View view) {
        if (findViewById(R.id.loadingPanel).getVisibility() == 0) {
            return;
        }
        int id = view.getId();
        if (id == R.id.BackButton) {
            super.finish();
        } else if (id != R.id.Recover) {
        } else {
            if (isAnyRequestProcessing) {
                Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                return;
            }
            final String obj = this.usernameInput.getText().toString();
            final String obj2 = this.passwordInput.getText().toString();
            if (!obj2.equals(this.passwordConfirmationInput.getText().toString())) {
                Toast.makeText(this, (int) R.string.passwords_dont_match, 0).show();
                return;
            }
            String string = Deobfuscator$app$Release.getString(-4871503128142307788L);
            String string2 = Deobfuscator$app$Release.getString(-4871503132437275084L);
            String string3 = Deobfuscator$app$Release.getString(-4871503136732242380L);
            final boolean z = this.pinInput.getVisibility() == 0;
            if (z) {
                string = this.pinInput.getText().toString();
            } else {
                string2 = this.securityQuestionInput.getText().toString();
                string3 = this.securityAnswerInput.getText().toString();
            }
            final String str = string2;
            final String str2 = string3;
            isAnyRequestProcessing = true;
            findViewById(R.id.loadingPanel).setVisibility(0);
            final String str3 = string;
            new Thread(new Runnable() { // from class: com.easyvictory.cheto.FPActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    final FPActivity fPActivity = FPActivity.this;
                    final String XXXX = z ? fPActivity.XXXX(obj, obj2, str3) : fPActivity.XXX(obj, obj2, str, str2);
                    boolean unused = FPActivity.isAnyRequestProcessing = false;
                    if (XXXX.length() > 0) {
                        fPActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.FPActivity.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(fPActivity, XXXX, 0).show();
                            }
                        });
                    }
                    fPActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.FPActivity.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            FPActivity.this.findViewById(R.id.loadingPanel).setVisibility(8);
                        }
                    });
                }
            }).start();
        }
    }
}
