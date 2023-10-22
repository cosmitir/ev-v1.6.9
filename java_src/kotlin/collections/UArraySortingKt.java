package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UArraySorting.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0014\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0016\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010\u0018\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UArraySortingKt {
    /* renamed from: partition-4UcCI2c  reason: not valid java name */
    private static final int m2917partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte m2540getw2LRezQ = UByteArray.m2540getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int m2540getw2LRezQ2 = UByteArray.m2540getw2LRezQ(bArr, i) & UByte.MAX_VALUE;
                i3 = m2540getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(m2540getw2LRezQ2, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m2540getw2LRezQ(bArr, i2) & UByte.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte m2540getw2LRezQ3 = UByteArray.m2540getw2LRezQ(bArr, i);
                UByteArray.m2545setVurrAj0(bArr, i, UByteArray.m2540getw2LRezQ(bArr, i2));
                UByteArray.m2545setVurrAj0(bArr, i2, m2540getw2LRezQ3);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-4UcCI2c  reason: not valid java name */
    private static final void m2921quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int m2917partition4UcCI2c = m2917partition4UcCI2c(bArr, i, i2);
        int i3 = m2917partition4UcCI2c - 1;
        if (i < i3) {
            m2921quickSort4UcCI2c(bArr, i, i3);
        }
        if (m2917partition4UcCI2c < i2) {
            m2921quickSort4UcCI2c(bArr, m2917partition4UcCI2c, i2);
        }
    }

    /* renamed from: partition-Aa5vz7o  reason: not valid java name */
    private static final int m2918partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short m2800getMh2AYeg = UShortArray.m2800getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int m2800getMh2AYeg2 = UShortArray.m2800getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = m2800getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(m2800getMh2AYeg2, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m2800getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short m2800getMh2AYeg3 = UShortArray.m2800getMh2AYeg(sArr, i);
                UShortArray.m2805set01HTLdE(sArr, i, UShortArray.m2800getMh2AYeg(sArr, i2));
                UShortArray.m2805set01HTLdE(sArr, i2, m2800getMh2AYeg3);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-Aa5vz7o  reason: not valid java name */
    private static final void m2922quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int m2918partitionAa5vz7o = m2918partitionAa5vz7o(sArr, i, i2);
        int i3 = m2918partitionAa5vz7o - 1;
        if (i < i3) {
            m2922quickSortAa5vz7o(sArr, i, i3);
        }
        if (m2918partitionAa5vz7o < i2) {
            m2922quickSortAa5vz7o(sArr, m2918partitionAa5vz7o, i2);
        }
    }

    /* renamed from: partition-oBK06Vg  reason: not valid java name */
    private static final int m2919partitionoBK06Vg(int[] iArr, int i, int i2) {
        int m2618getpVg5ArA = UIntArray.m2618getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (UnsignedKt.uintCompare(UIntArray.m2618getpVg5ArA(iArr, i), m2618getpVg5ArA) < 0) {
                i++;
            }
            while (UnsignedKt.uintCompare(UIntArray.m2618getpVg5ArA(iArr, i2), m2618getpVg5ArA) > 0) {
                i2--;
            }
            if (i <= i2) {
                int m2618getpVg5ArA2 = UIntArray.m2618getpVg5ArA(iArr, i);
                UIntArray.m2623setVXSXFK8(iArr, i, UIntArray.m2618getpVg5ArA(iArr, i2));
                UIntArray.m2623setVXSXFK8(iArr, i2, m2618getpVg5ArA2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-oBK06Vg  reason: not valid java name */
    private static final void m2923quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int m2919partitionoBK06Vg = m2919partitionoBK06Vg(iArr, i, i2);
        int i3 = m2919partitionoBK06Vg - 1;
        if (i < i3) {
            m2923quickSortoBK06Vg(iArr, i, i3);
        }
        if (m2919partitionoBK06Vg < i2) {
            m2923quickSortoBK06Vg(iArr, m2919partitionoBK06Vg, i2);
        }
    }

    /* renamed from: partition--nroSd4  reason: not valid java name */
    private static final int m2916partitionnroSd4(long[] jArr, int i, int i2) {
        long m2696getsVKNKU = ULongArray.m2696getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (UnsignedKt.ulongCompare(ULongArray.m2696getsVKNKU(jArr, i), m2696getsVKNKU) < 0) {
                i++;
            }
            while (UnsignedKt.ulongCompare(ULongArray.m2696getsVKNKU(jArr, i2), m2696getsVKNKU) > 0) {
                i2--;
            }
            if (i <= i2) {
                long m2696getsVKNKU2 = ULongArray.m2696getsVKNKU(jArr, i);
                ULongArray.m2701setk8EXiF4(jArr, i, ULongArray.m2696getsVKNKU(jArr, i2));
                ULongArray.m2701setk8EXiF4(jArr, i2, m2696getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort--nroSd4  reason: not valid java name */
    private static final void m2920quickSortnroSd4(long[] jArr, int i, int i2) {
        int m2916partitionnroSd4 = m2916partitionnroSd4(jArr, i, i2);
        int i3 = m2916partitionnroSd4 - 1;
        if (i < i3) {
            m2920quickSortnroSd4(jArr, i, i3);
        }
        if (m2916partitionnroSd4 < i2) {
            m2920quickSortnroSd4(jArr, m2916partitionnroSd4, i2);
        }
    }

    /* renamed from: sortArray-4UcCI2c  reason: not valid java name */
    public static final void m2925sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2921quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* renamed from: sortArray-Aa5vz7o  reason: not valid java name */
    public static final void m2926sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2922quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* renamed from: sortArray-oBK06Vg  reason: not valid java name */
    public static final void m2927sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2923quickSortoBK06Vg(array, i, i2 - 1);
    }

    /* renamed from: sortArray--nroSd4  reason: not valid java name */
    public static final void m2924sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2920quickSortnroSd4(array, i, i2 - 1);
    }
}
