package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.load.java.n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.f;

/* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
/* JADX INFO: loaded from: classes5.dex */
public class a implements k.c {
    private static final boolean a = "true".equals(System.getProperty("kotlin.ignore.old.metadata"));
    private static final Map<ClassId, KotlinClassHeader.Kind> b;
    private int[] c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a f9400d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9401e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9402f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f9403g = null;
    private String[] h = null;
    private String[] i = null;
    private String[] j = null;
    private KotlinClassHeader.Kind k = null;

    /* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
    private static abstract class b implements k.b {
        private final List<String> a = new ArrayList();

        private static /* synthetic */ void e(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "enumEntryName";
            } else if (i != 2) {
                objArr[0] = "enumClassId";
            } else {
                objArr[0] = "classLiteralValue";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$CollectStringArrayAnnotationVisitor";
            if (i != 2) {
                objArr[2] = "visitEnum";
            } else {
                objArr[2] = "visitClassLiteral";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
        public void a() {
            f((String[]) this.a.toArray(new String[0]));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
        public void b(Object obj) {
            if (obj instanceof String) {
                this.a.add((String) obj);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
        public void c(ClassId classId, Name name) {
            if (classId == null) {
                e(0);
            }
            if (name == null) {
                e(1);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
        public void d(f fVar) {
            if (fVar == null) {
                e(2);
            }
        }

        protected abstract void f(String[] strArr);
    }

    /* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
    private class c implements k.a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.header.a$c$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
        class C0533a extends b {
            C0533a() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.h = strArr;
            }
        }

        /* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
        class b extends b {
            b() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "result", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.i = strArr;
            }
        }

        private c() {
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "classLiteralValue";
            } else if (i == 7) {
                objArr[0] = "classId";
            } else if (i == 4) {
                objArr[0] = "enumClassId";
            } else if (i != 5) {
                objArr[0] = "name";
            } else {
                objArr[0] = "enumEntryName";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor";
            switch (i) {
                case 2:
                    objArr[2] = "visitArray";
                    break;
                case 3:
                case 4:
                case 5:
                    objArr[2] = "visitEnum";
                    break;
                case 6:
                case 7:
                    objArr[2] = "visitAnnotation";
                    break;
                default:
                    objArr[2] = "visitClassLiteral";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private k.b h() {
            return new C0533a();
        }

        private k.b i() {
            return new b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void b(Name name, ClassId classId, Name name2) {
            if (name == null) {
                g(3);
            }
            if (classId == null) {
                g(4);
            }
            if (name2 == null) {
                g(5);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public k.a c(Name name, ClassId classId) {
            if (name == null) {
                g(6);
            }
            if (classId != null) {
                return null;
            }
            g(7);
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void d(Name name, f fVar) {
            if (name == null) {
                g(0);
            }
            if (fVar == null) {
                g(1);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void e(Name name, Object obj) {
            if (name == null) {
                return;
            }
            String strE = name.e();
            if (CampaignEx.JSON_KEY_AD_K.equals(strE)) {
                if (obj instanceof Integer) {
                    a.this.k = KotlinClassHeader.Kind.getById(((Integer) obj).intValue());
                    return;
                }
                return;
            }
            if ("mv".equals(strE)) {
                if (obj instanceof int[]) {
                    a.this.c = (int[]) obj;
                    return;
                }
                return;
            }
            if ("bv".equals(strE)) {
                if (obj instanceof int[]) {
                    a.this.f9400d = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a((int[]) obj);
                    return;
                }
                return;
            }
            if ("xs".equals(strE)) {
                if (obj instanceof String) {
                    a.this.f9401e = (String) obj;
                    return;
                }
                return;
            }
            if ("xi".equals(strE)) {
                if (obj instanceof Integer) {
                    a.this.f9402f = ((Integer) obj).intValue();
                    return;
                }
                return;
            }
            if ("pn".equals(strE) && (obj instanceof String)) {
                a.this.f9403g = (String) obj;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public k.b f(Name name) {
            if (name == null) {
                g(2);
            }
            String strE = name.e();
            if ("d1".equals(strE)) {
                return h();
            }
            if ("d2".equals(strE)) {
                return i();
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
    private class d implements k.a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.header.a$d$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
        class C0534a extends b {
            C0534a() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.h = strArr;
            }
        }

        /* JADX INFO: compiled from: ReadKotlinClassHeaderAnnotationVisitor.java */
        class b extends b {
            b() {
            }

            private static /* synthetic */ void e(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "data", "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2", "visitEnd"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.header.a.b
            protected void f(String[] strArr) {
                if (strArr == null) {
                    e(0);
                }
                a.this.i = strArr;
            }
        }

        private d() {
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "classLiteralValue";
            } else if (i == 7) {
                objArr[0] = "classId";
            } else if (i == 4) {
                objArr[0] = "enumClassId";
            } else if (i != 5) {
                objArr[0] = "name";
            } else {
                objArr[0] = "enumEntryName";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor";
            switch (i) {
                case 2:
                    objArr[2] = "visitArray";
                    break;
                case 3:
                case 4:
                case 5:
                    objArr[2] = "visitEnum";
                    break;
                case 6:
                case 7:
                    objArr[2] = "visitAnnotation";
                    break;
                default:
                    objArr[2] = "visitClassLiteral";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private k.b h() {
            return new C0534a();
        }

        private k.b i() {
            return new b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void b(Name name, ClassId classId, Name name2) {
            if (name == null) {
                g(3);
            }
            if (classId == null) {
                g(4);
            }
            if (name2 == null) {
                g(5);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public k.a c(Name name, ClassId classId) {
            if (name == null) {
                g(6);
            }
            if (classId != null) {
                return null;
            }
            g(7);
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void d(Name name, f fVar) {
            if (name == null) {
                g(0);
            }
            if (fVar == null) {
                g(1);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public void e(Name name, Object obj) {
            if (name == null) {
                return;
            }
            String strE = name.e();
            if (!"version".equals(strE)) {
                if ("multifileClassName".equals(strE)) {
                    a.this.f9401e = obj instanceof String ? (String) obj : null;
                    return;
                }
                return;
            }
            if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                a.this.c = iArr;
                if (a.this.f9400d == null) {
                    a.this.f9400d = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a(iArr);
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
        public k.b f(Name name) {
            if (name == null) {
                g(2);
            }
            String strE = name.e();
            if ("data".equals(strE) || "filePartClassNames".equals(strE)) {
                return h();
            }
            if ("strings".equals(strE)) {
                return i();
            }
            return null;
        }
    }

    static {
        HashMap map = new HashMap();
        b = map;
        map.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinClass")), KotlinClassHeader.Kind.CLASS);
        map.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinFileFacade")), KotlinClassHeader.Kind.FILE_FACADE);
        map.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinMultifileClass")), KotlinClassHeader.Kind.MULTIFILE_CLASS);
        map.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinMultifileClassPart")), KotlinClassHeader.Kind.MULTIFILE_CLASS_PART);
        map.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinSyntheticClass")), KotlinClassHeader.Kind.SYNTHETIC_CLASS);
    }

    private static /* synthetic */ void d(int i) {
        Object[] objArr = new Object[3];
        if (i != 1) {
            objArr[0] = "classId";
        } else {
            objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor";
        objArr[2] = "visitAnnotation";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    private boolean o() {
        KotlinClassHeader.Kind kind = this.k;
        return kind == KotlinClassHeader.Kind.CLASS || kind == KotlinClassHeader.Kind.FILE_FACADE || kind == KotlinClassHeader.Kind.MULTIFILE_CLASS_PART;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.c
    public void a() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.c
    public k.a c(ClassId classId, d0 d0Var) {
        KotlinClassHeader.Kind kind;
        if (classId == null) {
            d(0);
        }
        if (d0Var == null) {
            d(1);
        }
        if (classId.b().equals(n.a)) {
            return new c();
        }
        if (a || this.k != null || (kind = b.get(classId)) == null) {
            return null;
        }
        this.k = kind;
        return new d();
    }

    public KotlinClassHeader n() {
        if (this.k == null || this.c == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d dVar = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d(this.c, (this.f9402f & 8) != 0);
        if (!dVar.g()) {
            this.j = this.h;
            this.h = null;
        } else if (o() && this.h == null) {
            return null;
        }
        KotlinClassHeader.Kind kind = this.k;
        kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a aVar = this.f9400d;
        if (aVar == null) {
            aVar = kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a.h;
        }
        return new KotlinClassHeader(kind, dVar, aVar, this.h, this.j, this.i, this.f9401e, this.f9402f, this.f9403g);
    }
}
