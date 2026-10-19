package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.c;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaAnnotationArguments.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.d {
    private final Object[] c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Name name, Object[] values) {
        super(name);
        Intrinsics.checkParameterIsNotNull(values, "values");
        this.c = values;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public List<c> c() {
        Object[] objArr = this.c;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            c.a aVar = c.a;
            if (obj == null) {
                Intrinsics.throwNpe();
            }
            arrayList.add(aVar.a(obj, null));
        }
        return arrayList;
    }
}
