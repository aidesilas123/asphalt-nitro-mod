###### Class kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;
.super Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;
.source "JvmBytecodeBinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a$a;
    }
.end annotation


# static fields
.field public static final g:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;->i:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;->g:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;->h:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;

    return-void

    :array_20
    .array-data 4
        0x1
        0x0
        0x3
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .registers 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;-><init>([I)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a.C0538a (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a$a)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a$a;
.super Ljava/lang/Object;
.source "JvmBytecodeBinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/a$a;-><init>()V

    return-void
.end method
