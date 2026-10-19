package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancementBuilder;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class PredefinedEnhancementInfoKt {
    private static final JavaTypeQualifiers a = new JavaTypeQualifiers(NullabilityQualifier.NULLABLE, null, false, false, 8, null);
    private static final JavaTypeQualifiers b;
    private static final JavaTypeQualifiers c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> f9253d;

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class a extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9254d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9255e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9256f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9257g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9254d = str3;
            this.f9255e = str4;
            this.f9256f = str5;
            this.f9257g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9257g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9257g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9257g, PredefinedEnhancementInfoKt.b);
            receiver.d(JvmPrimitiveType.BOOLEAN);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class a0 extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9258d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9259e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9260f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9261g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a0(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9258d = str3;
            this.f9259e = str4;
            this.f9260f = str5;
            this.f9261g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9261g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9261g, PredefinedEnhancementInfoKt.b);
            receiver.c(this.f9261g, PredefinedEnhancementInfoKt.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class b extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9262d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9263e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9264f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9265g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9262d = str3;
            this.f9263e = str4;
            this.f9264f = str5;
            this.f9265g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.h, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class b0 extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9266d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9267e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9268f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9269g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b0(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9266d = str3;
            this.f9267e = str4;
            this.f9268f = str5;
            this.f9269g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9269g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9269g, PredefinedEnhancementInfoKt.b);
            receiver.c(this.f9269g, PredefinedEnhancementInfoKt.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class c extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9270d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9271e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9272f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9273g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9270d = str3;
            this.f9271e = str4;
            this.f9272f = str5;
            this.f9273g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9273g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.h, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.a, PredefinedEnhancementInfoKt.a);
            receiver.c(this.f9273g, PredefinedEnhancementInfoKt.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class d extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9274d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9275e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9276f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9277g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9274d = str3;
            this.f9275e = str4;
            this.f9276f = str5;
            this.f9277g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9277g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.i, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            receiver.c(this.f9277g, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class e extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9278d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9279e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9280f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9281g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9278d = str3;
            this.f9279e = str4;
            this.f9280f = str5;
            this.f9281g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9281g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.h, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.a);
            receiver.c(this.f9281g, PredefinedEnhancementInfoKt.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class f extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9282d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9283e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9284f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9285g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9282d = str3;
            this.f9283e = str4;
            this.f9284f = str5;
            this.f9285g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9285g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9285g, PredefinedEnhancementInfoKt.c);
            receiver.b(this.h, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.a);
            receiver.c(this.f9285g, PredefinedEnhancementInfoKt.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class g extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9286d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9287e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9288f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9289g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9286d = str3;
            this.f9287e = str4;
            this.f9288f = str5;
            this.f9289g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(this.j, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class h extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9290d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9291e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9292f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9293g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9290d = str3;
            this.f9291e = str4;
            this.f9292f = str5;
            this.f9293g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9293g, PredefinedEnhancementInfoKt.c);
            receiver.c(this.j, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class i extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9294d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9295e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9296f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9297g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9294d = str3;
            this.f9295e = str4;
            this.f9296f = str5;
            this.f9297g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9297g, PredefinedEnhancementInfoKt.a);
            receiver.c(this.j, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class j extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9298d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9299e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9300f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9301g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9298d = str3;
            this.f9299e = str4;
            this.f9300f = str5;
            this.f9301g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(this.f9301g, PredefinedEnhancementInfoKt.c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class k extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9302d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9303e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9304f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9305g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9302d = str3;
            this.f9303e = str4;
            this.f9304f = str5;
            this.f9305g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class l extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9306d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9307e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9308f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9309g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9306d = str3;
            this.f9307e = str4;
            this.f9308f = str5;
            this.f9309g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class m extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9310d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9311e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9312f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9313g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9310d = str3;
            this.f9311e = str4;
            this.f9312f = str5;
            this.f9313g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(this.f9313g, PredefinedEnhancementInfoKt.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class n extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9314d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9315e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9316f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9317g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9314d = str3;
            this.f9315e = str4;
            this.f9316f = str5;
            this.f9317g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9317g, PredefinedEnhancementInfoKt.b);
            receiver.d(JvmPrimitiveType.BOOLEAN);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class o extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9318d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9319e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9320f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9321g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9318d = str3;
            this.f9319e = str4;
            this.f9320f = str5;
            this.f9321g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9321g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9321g, PredefinedEnhancementInfoKt.b);
            receiver.d(JvmPrimitiveType.BOOLEAN);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class p extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9322d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9323e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9324f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9325g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9322d = str3;
            this.f9323e = str4;
            this.f9324f = str5;
            this.f9325g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9325g, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class q extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9326d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9327e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9328f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9329g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9326d = str3;
            this.f9327e = str4;
            this.f9328f = str5;
            this.f9329g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9329g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9329g, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class r extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9330d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9331e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9332f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9333g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9330d = str3;
            this.f9331e = str4;
            this.f9332f = str5;
            this.f9333g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9333g, PredefinedEnhancementInfoKt.b);
            receiver.c(this.f9333g, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class s extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9334d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9335e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9336f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9337g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9334d = str3;
            this.f9335e = str4;
            this.f9336f = str5;
            this.f9337g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9337g, PredefinedEnhancementInfoKt.b);
            receiver.b(this.f9337g, PredefinedEnhancementInfoKt.b);
            receiver.c(this.f9337g, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class t extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9338d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9339e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9340f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9341g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9338d = str3;
            this.f9339e = str4;
            this.f9340f = str5;
            this.f9341g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(this.f9341g, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class u extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9342d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9343e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9344f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9345g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9342d = str3;
            this.f9343e = str4;
            this.f9344f = str5;
            this.f9345g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(this.a.h("Spliterator"), PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class v extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9346d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9347e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9348f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9349g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9346d = str3;
            this.f9347e = str4;
            this.f9348f = str5;
            this.f9349g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.c, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            receiver.d(JvmPrimitiveType.BOOLEAN);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class w extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9350d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9351e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9352f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9353g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9350d = str3;
            this.f9351e = str4;
            this.f9352f = str5;
            this.f9353g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(this.f9350d, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class x extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9354d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9355e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9356f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9357g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9354d = str3;
            this.f9355e = str4;
            this.f9356f = str5;
            this.f9357g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.c(this.f9354d, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class y extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9358d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9359e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9360f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9361g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9358d = str3;
            this.f9359e = str4;
            this.f9360f = str5;
            this.f9361g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9359e, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    /* JADX INFO: compiled from: predefinedEnhancementInfo.kt */
    static final class z extends Lambda implements Function1<SignatureEnhancementBuilder.a.C0531a, kotlin.v> {
        final /* synthetic */ SignatureBuildingComponents a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f9362d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f9363e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f9364f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f9365g;
        final /* synthetic */ String h;
        final /* synthetic */ String i;
        final /* synthetic */ String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z(SignatureBuildingComponents signatureBuildingComponents, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super(1);
            this.a = signatureBuildingComponents;
            this.b = str;
            this.c = str2;
            this.f9362d = str3;
            this.f9363e = str4;
            this.f9364f = str5;
            this.f9365g = str6;
            this.h = str7;
            this.i = str8;
            this.j = str9;
        }

        public final void a(SignatureEnhancementBuilder.a.C0531a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            receiver.b(this.f9364f, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(SignatureEnhancementBuilder.a.C0531a c0531a) {
            a(c0531a);
            return kotlin.v.a;
        }
    }

    static {
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        b = new JavaTypeQualifiers(nullabilityQualifier, null, false, false, 8, null);
        c = new JavaTypeQualifiers(nullabilityQualifier, null, true, false, 8, null);
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        String strG = signatureBuildingComponents.g("Object");
        String strF = signatureBuildingComponents.f("Predicate");
        String strF2 = signatureBuildingComponents.f("Function");
        String strF3 = signatureBuildingComponents.f("Consumer");
        String strF4 = signatureBuildingComponents.f("BiFunction");
        String strF5 = signatureBuildingComponents.f("BiConsumer");
        String strF6 = signatureBuildingComponents.f("UnaryOperator");
        String strH = signatureBuildingComponents.h("stream/Stream");
        String strH2 = signatureBuildingComponents.h("Optional");
        SignatureEnhancementBuilder signatureEnhancementBuilder = new SignatureEnhancementBuilder();
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.h("Iterator")).a("forEachRemaining", new k(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.g("Iterable")).a("spliterator", new u(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        SignatureEnhancementBuilder.a aVar = new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.h("Collection"));
        aVar.a("removeIf", new v(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar.a("stream", new w(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar.a("parallelStream", new x(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.h("List")).a("replaceAll", new y(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        SignatureEnhancementBuilder.a aVar2 = new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.h("Map"));
        aVar2.a("forEach", new z(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("putIfAbsent", new a0(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("replace", new b0(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("replace", new a(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("replaceAll", new b(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("compute", new c(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("computeIfAbsent", new d(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("computeIfPresent", new e(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar2.a("merge", new f(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        SignatureEnhancementBuilder.a aVar3 = new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, strH2);
        aVar3.a("empty", new g(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar3.a("of", new h(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar3.a("ofNullable", new i(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar3.a("get", new j(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        aVar3.a("ifPresent", new l(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.g("ref/Reference")).a("get", new m(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, strF).a("test", new n(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.f("BiPredicate")).a("test", new o(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, strF3).a("accept", new p(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, strF5).a("accept", new q(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, strF2).a("apply", new r(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, strF4).a("apply", new s(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        new SignatureEnhancementBuilder.a(signatureEnhancementBuilder, signatureBuildingComponents.f("Supplier")).a("get", new t(signatureBuildingComponents, strF3, strF, strH, strF6, strF5, strG, strF4, strF2, strH2));
        f9253d = signatureEnhancementBuilder.a();
    }

    public static final Map<String, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> getPREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE() {
        return f9253d;
    }
}
