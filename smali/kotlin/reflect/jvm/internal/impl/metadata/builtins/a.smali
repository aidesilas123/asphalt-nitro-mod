###### Class kotlin.reflect.jvm.internal.impl.metadata.builtins.a (kotlin.reflect.jvm.internal.impl.metadata.builtins.a)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;
.super Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;
.source "BuiltInsBinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a$a;
    }
.end annotation


# static fields
.field public static final g:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;->i:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;->g:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;->h:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

    return-void

    :array_20
    .array-data 4
        0x1
        0x0
        0x7
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


# virtual methods
.method public g()Z
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;->g:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->e(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;)Z

    move-result v0

    return v0
.end method
