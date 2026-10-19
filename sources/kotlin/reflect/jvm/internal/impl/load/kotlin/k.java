package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: KotlinJvmBinaryClass.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface k {

    /* JADX INFO: compiled from: KotlinJvmBinaryClass.kt */
    public interface a {
        void a();

        void b(Name name, ClassId classId, Name name2);

        a c(Name name, ClassId classId);

        void d(Name name, kotlin.reflect.jvm.internal.impl.resolve.constants.f fVar);

        void e(Name name, Object obj);

        b f(Name name);
    }

    /* JADX INFO: compiled from: KotlinJvmBinaryClass.kt */
    public interface b {
        void a();

        void b(Object obj);

        void c(ClassId classId, Name name);

        void d(kotlin.reflect.jvm.internal.impl.resolve.constants.f fVar);
    }

    /* JADX INFO: compiled from: KotlinJvmBinaryClass.kt */
    public interface c {
        void a();

        a c(ClassId classId, d0 d0Var);
    }

    /* JADX INFO: compiled from: KotlinJvmBinaryClass.kt */
    public interface d {
        c a(Name name, String str, Object obj);

        e b(Name name, String str);
    }

    /* JADX INFO: compiled from: KotlinJvmBinaryClass.kt */
    public interface e extends c {
        a b(int i, ClassId classId, d0 d0Var);
    }

    ClassId a();

    void b(d dVar, byte[] bArr);

    KotlinClassHeader c();

    void d(c cVar, byte[] bArr);

    String getLocation();
}
