package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Comparator;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.y;

/* JADX INFO: compiled from: MemberComparator.java */
/* JADX INFO: loaded from: classes5.dex */
public class a implements Comparator<i> {
    public static final a a = new a();

    private a() {
    }

    private static Integer b(i iVar, i iVar2) {
        int iC = c(iVar2) - c(iVar);
        if (iC != 0) {
            return Integer.valueOf(iC);
        }
        if (DescriptorUtils.isEnumEntry(iVar) && DescriptorUtils.isEnumEntry(iVar2)) {
            return 0;
        }
        int iCompareTo = iVar.getName().compareTo(iVar2.getName());
        if (iCompareTo != 0) {
            return Integer.valueOf(iCompareTo);
        }
        return null;
    }

    private static int c(i iVar) {
        if (DescriptorUtils.isEnumEntry(iVar)) {
            return 8;
        }
        if (iVar instanceof h) {
            return 7;
        }
        if (iVar instanceof y) {
            return ((y) iVar).K() == null ? 6 : 5;
        }
        if (iVar instanceof o) {
            return ((o) iVar).K() == null ? 4 : 3;
        }
        if (iVar instanceof d) {
            return 2;
        }
        return iVar instanceof h0 ? 1 : 0;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(i iVar, i iVar2) {
        Integer numB = b(iVar, iVar2);
        if (numB != null) {
            return numB.intValue();
        }
        return 0;
    }
}
