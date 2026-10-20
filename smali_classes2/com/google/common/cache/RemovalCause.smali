###### Class com.google.common.cache.RemovalCause (com.google.common.cache.RemovalCause)
.class public abstract enum Lcom/google/common/cache/RemovalCause;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/RemovalCause;

.field public static final enum b:Lcom/google/common/cache/RemovalCause;

.field public static final enum c:Lcom/google/common/cache/RemovalCause;

.field public static final enum d:Lcom/google/common/cache/RemovalCause;

.field public static final enum e:Lcom/google/common/cache/RemovalCause;

.field private static final synthetic f:[Lcom/google/common/cache/RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/cache/RemovalCause$a;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->a:Lcom/google/common/cache/RemovalCause;

    new-instance v0, Lcom/google/common/cache/RemovalCause$b;

    const-string v1, "REPLACED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->b:Lcom/google/common/cache/RemovalCause;

    new-instance v0, Lcom/google/common/cache/RemovalCause$c;

    const-string v1, "COLLECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->c:Lcom/google/common/cache/RemovalCause;

    new-instance v0, Lcom/google/common/cache/RemovalCause$d;

    const-string v1, "EXPIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->d:Lcom/google/common/cache/RemovalCause;

    new-instance v0, Lcom/google/common/cache/RemovalCause$e;

    const-string v1, "SIZE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->e:Lcom/google/common/cache/RemovalCause;

    invoke-static {}, Lcom/google/common/cache/RemovalCause;->e()[Lcom/google/common/cache/RemovalCause;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/RemovalCause;->f:[Lcom/google/common/cache/RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/RemovalCause$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/cache/RemovalCause;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/cache/RemovalCause;

    sget-object v1, Lcom/google/common/cache/RemovalCause;->a:Lcom/google/common/cache/RemovalCause;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/RemovalCause;->b:Lcom/google/common/cache/RemovalCause;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/RemovalCause;->c:Lcom/google/common/cache/RemovalCause;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/RemovalCause;->d:Lcom/google/common/cache/RemovalCause;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/RemovalCause;->e:Lcom/google/common/cache/RemovalCause;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/RemovalCause;
    .registers 2

    const-class v0, Lcom/google/common/cache/RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/RemovalCause;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/RemovalCause;
    .registers 1

    sget-object v0, Lcom/google/common/cache/RemovalCause;->f:[Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v0}, [Lcom/google/common/cache/RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/RemovalCause;

    return-object v0
.end method
