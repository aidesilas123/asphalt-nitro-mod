###### Class com.google.common.cache.LocalCache$EntryFactory (com.google.common.cache.LocalCache$EntryFactory)
.class abstract enum Lcom/google/common/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum b:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum c:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum d:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum e:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum f:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum g:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum h:Lcom/google/common/cache/LocalCache$EntryFactory;

.field static final i:[Lcom/google/common/cache/LocalCache$EntryFactory;

.field private static final synthetic j:[Lcom/google/common/cache/LocalCache$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/google/common/cache/LocalCache$EntryFactory$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/LocalCache$EntryFactory$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/LocalCache$EntryFactory;->a:Lcom/google/common/cache/LocalCache$EntryFactory;

    new-instance v1, Lcom/google/common/cache/LocalCache$EntryFactory$b;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/cache/LocalCache$EntryFactory$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->b:Lcom/google/common/cache/LocalCache$EntryFactory;

    new-instance v3, Lcom/google/common/cache/LocalCache$EntryFactory$c;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/cache/LocalCache$EntryFactory$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/cache/LocalCache$EntryFactory;->c:Lcom/google/common/cache/LocalCache$EntryFactory;

    new-instance v5, Lcom/google/common/cache/LocalCache$EntryFactory$d;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/cache/LocalCache$EntryFactory$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/cache/LocalCache$EntryFactory;->d:Lcom/google/common/cache/LocalCache$EntryFactory;

    new-instance v7, Lcom/google/common/cache/LocalCache$EntryFactory$e;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/cache/LocalCache$EntryFactory$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/cache/LocalCache$EntryFactory;->e:Lcom/google/common/cache/LocalCache$EntryFactory;

    new-instance v9, Lcom/google/common/cache/LocalCache$EntryFactory$f;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/common/cache/LocalCache$EntryFactory$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/common/cache/LocalCache$EntryFactory;->f:Lcom/google/common/cache/LocalCache$EntryFactory;

    new-instance v11, Lcom/google/common/cache/LocalCache$EntryFactory$g;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/common/cache/LocalCache$EntryFactory$g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/common/cache/LocalCache$EntryFactory;->g:Lcom/google/common/cache/LocalCache$EntryFactory;

    new-instance v13, Lcom/google/common/cache/LocalCache$EntryFactory$h;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/common/cache/LocalCache$EntryFactory$h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/common/cache/LocalCache$EntryFactory;->h:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {}, Lcom/google/common/cache/LocalCache$EntryFactory;->e()[Lcom/google/common/cache/LocalCache$EntryFactory;

    move-result-object v15

    sput-object v15, Lcom/google/common/cache/LocalCache$EntryFactory;->j:[Lcom/google/common/cache/LocalCache$EntryFactory;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/common/cache/LocalCache$EntryFactory;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/common/cache/LocalCache$EntryFactory;->i:[Lcom/google/common/cache/LocalCache$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/e;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/cache/LocalCache$EntryFactory;
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/common/cache/LocalCache$EntryFactory;

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->a:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->b:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->c:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->d:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->e:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->f:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->g:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->h:Lcom/google/common/cache/LocalCache$EntryFactory;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/LocalCache$EntryFactory;
    .registers 2

    const-class v0, Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/LocalCache$EntryFactory;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/LocalCache$EntryFactory;
    .registers 1

    sget-object v0, Lcom/google/common/cache/LocalCache$EntryFactory;->j:[Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0}, [Lcom/google/common/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method
