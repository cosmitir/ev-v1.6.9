package com.hack.opensdk;

import android.os.Bundle;
/* loaded from: classes2.dex */
public class IPackageObserver {

    /* loaded from: classes2.dex */
    public interface Delete {
        void onPackageDeleted(String str, int i, String str2, int i2);
    }

    /* loaded from: classes2.dex */
    public interface Install {
        void onPackageInstalled(String str, int i, String str2, Bundle bundle, int i2);
    }
}
