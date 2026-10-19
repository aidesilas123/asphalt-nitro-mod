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

###### Class kotlin.reflect.jvm.internal.impl.metadata.builtins.a.C0536a (kotlin.reflect.jvm.internal.impl.metadata.builtins.a$a)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a$a;
.super Ljava/lang/Object;
.source "BuiltInsBinaryVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;
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

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;
    .registers 5

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p1, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object v2, p1

    check-cast v2, Lkotlin/collections/z;

    invoke-virtual {v2}, Lkotlin/collections/z;->nextInt()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3b
    invoke-static {v1}, Lkotlin/collections/p;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/builtins/a;-><init>([I)V

    return-object v0
.end method
