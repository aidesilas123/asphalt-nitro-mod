###### Class kotlin.reflect.jvm.internal.impl.types.model.TypeVariance (kotlin.reflect.jvm.internal.impl.types.model.TypeVariance)
.class public final enum Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
.super Ljava/lang/Enum;
.source "TypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

.field public static final enum b:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

.field public static final enum c:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

.field private static final synthetic d:[Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    const-string v2, "IN"

    const/4 v3, 0x0

    const-string v4, "in"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->a:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    const-string v2, "OUT"

    const/4 v3, 0x1

    const-string v4, "out"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->b:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    const-string v2, "INV"

    const/4 v3, 0x2

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->c:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->d:[Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .registers 2

    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->d:[Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->e:Ljava/lang/String;

    return-object v0
.end method
