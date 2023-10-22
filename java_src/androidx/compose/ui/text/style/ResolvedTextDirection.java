package androidx.compose.ui.text.style;

import java.util.Arrays;
import kotlin.Metadata;
/* compiled from: ResolvedTextDirection.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/style/ResolvedTextDirection;", "", "(Ljava/lang/String;I)V", "Ltr", "Rtl", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public enum ResolvedTextDirection {
    Ltr,
    Rtl;

    /* renamed from: values  reason: to resolve conflict with enum method */
    public static ResolvedTextDirection[] valuesCustom() {
        ResolvedTextDirection[] valuesCustom = values();
        return (ResolvedTextDirection[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
    }
}
