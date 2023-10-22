package com.hack.server.core;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.hack.agent.ProviderBase;
import com.hack.opensdk.Cmd;
import com.hack.opensdk.CmdConstants;
import com.hack.utils.ThreadUtils;
/* loaded from: classes2.dex */
public class HackServerProvider extends ProviderBase {
    private static final boolean DEBUG = false;
    private static final String TAG = "HackServerProvider";

    @Override // com.hack.agent.BaseAgentFileProvider, android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.hack.agent.ProviderBase
    public int getProviderCallType() {
        return CmdConstants.CMD_CORE_PROVIDER_CALL;
    }

    @Override // com.hack.agent.BaseAgentFileProvider, android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // com.hack.agent.BaseAgentFileProvider, android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.hack.agent.BaseAgentFileProvider, android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.hack.agent.BaseAgentFileProvider, android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // com.hack.agent.ProviderBase, com.hack.agent.BaseAgentFileProvider, android.content.ContentProvider
    public boolean onCreate() {
        ThreadUtils.postOnBackgroundThread(new Runnable() { // from class: com.hack.server.core.HackServerProvider$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HackServerProvider.this.m2460lambda$onCreate$0$comhackservercoreHackServerProvider();
            }
        });
        return ((Boolean) Cmd.INSTANCE().exec(CmdConstants.CMD_CORE_PROVIDER_CREATE, getContext())).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$com-hack-server-core-HackServerProvider  reason: not valid java name */
    public /* synthetic */ void m2460lambda$onCreate$0$comhackservercoreHackServerProvider() {
        getContext().startService(new Intent(getContext(), ForgroundService.class));
    }
}
