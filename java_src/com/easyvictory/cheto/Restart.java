package com.easyvictory.cheto;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class Restart extends AppCompatActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.e(Restart.class.getName() + Deobfuscator$app$Release.getString(-4871513663697084876L));
        finish();
        startActivity(new Intent(this, MainActivity.class));
    }
}
