package com.hack.assist;

import com.hack.agent.ProviderBase;
import com.hack.opensdk.CmdConstants;
/* loaded from: classes2.dex */
public class AssistProvider extends ProviderBase {
    @Override // com.hack.agent.ProviderBase
    public int getProviderCallType() {
        return CmdConstants.CMD_ASSIST_PROVIDER_CALL;
    }
}
