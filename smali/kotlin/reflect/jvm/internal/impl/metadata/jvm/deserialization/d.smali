###### Class kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;
.super Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;
.source "JvmMetadataVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d$a;
    }
.end annotation


# static fields
.field public static final g:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d$a;


# instance fields
.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;->i:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;->g:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;->h:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;

    return-void

    :array_20
    .array-data 4
        0x1
        0x1
        0x10
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .registers 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .registers 4

    const-string v0, "versionArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;-><init>([I)V

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;->j:Z

    return-void
.end method


# virtual methods
.method public g()Z
    .registers 5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b()I

    move-result v0

    if-eqz v0, :cond_2c

    :cond_e
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;->j:Z

    if-eqz v0, :cond_19

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;->g:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->e(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;)Z

    move-result v0

    goto :goto_29

    :cond_19
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->a()I

    move-result v0

    if-ne v0, v2, :cond_28

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/a;->b()I

    move-result v0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

###### Class kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d.a (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d$a)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d$a;
.super Ljava/lang/Object;
.source "JvmMetadataVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d;
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

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/d$a;-><init>()V

    return-void
.end method
