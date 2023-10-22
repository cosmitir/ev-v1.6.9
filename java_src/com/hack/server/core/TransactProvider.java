package com.hack.server.core;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.hack.opensdk.CmdConstants;
import com.hack.opensdk.HackApi;
/* loaded from: classes2.dex */
public class TransactProvider extends ContentProvider {
    private static final String TAG = "TransactProvider";

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (TextUtils.equals(str, CmdConstants.TRANSACT_PROVIDER_METHOD)) {
            bundle.setClassLoader(TransactProvider.class.getClassLoader());
            int i = bundle.getInt(CmdConstants.TRANSACT_KEY_CMD);
            if (i == 3) {
                getContext().getContentResolver().acquireUnstableContentProviderClient((Uri) bundle.getParcelable(CmdConstants.TRANSACT_KEY_AUTHORITY));
                return null;
            }
            return HackApi.getTransactRegistry().transact(getContext(), i, bundle);
        }
        return null;
    }
}
