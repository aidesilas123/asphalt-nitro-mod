###### Class com.ironsource.ja.c (com.ironsource.ja$c)
.class final enum Lcom/ironsource/ja$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/ja$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/ja$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lcom/ironsource/ja$c;

.field public static final enum c:Lcom/ironsource/ja$c;

.field public static final enum d:Lcom/ironsource/ja$c;

.field public static final enum e:Lcom/ironsource/ja$c;

.field public static final enum f:Lcom/ironsource/ja$c;

.field public static final enum g:Lcom/ironsource/ja$c;


# instance fields
.field private final h:I

.field private final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/ironsource/ja$c;

    const-string v1, "com.android.vending"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOOGLE_PLAY"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ironsource/ja$c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/ja$c;->c:Lcom/ironsource/ja$c;

    new-instance v1, Lcom/ironsource/ja$c;

    const-string v2, "com.google.market"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v5, "GOOGLE_MARKET"

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-direct {v1, v5, v6, v7, v2}, Lcom/ironsource/ja$c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v1, Lcom/ironsource/ja$c;->d:Lcom/ironsource/ja$c;

    new-instance v2, Lcom/ironsource/ja$c;

    const-string v5, "com.sec.android.app.samsungapps"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v8, "SAMSUNG"

    const/4 v9, 0x5

    invoke-direct {v2, v8, v4, v9, v5}, Lcom/ironsource/ja$c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v2, Lcom/ironsource/ja$c;->e:Lcom/ironsource/ja$c;

    new-instance v5, Lcom/ironsource/ja$c;

    const-string v8, "com.amazon.venezia"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "AMAZON"

    const/4 v11, 0x3

    const/4 v12, 0x6

    invoke-direct {v5, v10, v11, v12, v8}, Lcom/ironsource/ja$c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcom/ironsource/ja$c;->f:Lcom/ironsource/ja$c;

    new-instance v8, Lcom/ironsource/ja$c;

    const-string v10, "com.huawei.appmarket"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "HUAWEI"

    const/4 v13, 0x7

    invoke-direct {v8, v12, v7, v13, v10}, Lcom/ironsource/ja$c;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/ironsource/ja$c;->g:Lcom/ironsource/ja$c;

    new-array v9, v9, [Lcom/ironsource/ja$c;

    aput-object v0, v9, v3

    aput-object v1, v9, v6

    aput-object v2, v9, v4

    aput-object v5, v9, v11

    aput-object v8, v9, v7

    sput-object v9, Lcom/ironsource/ja$c;->b:[Lcom/ironsource/ja$c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ironsource/ja$c;->a:Ljava/util/Map;

    invoke-static {}, Lcom/ironsource/ja$c;->values()[Lcom/ironsource/ja$c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6e
    if-ge v2, v1, :cond_87

    aget-object v4, v0, v2

    invoke-direct {v4}, Lcom/ironsource/ja$c;->j()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_78
    if-ge v7, v6, :cond_84

    aget-object v8, v5, v7

    sget-object v9, Lcom/ironsource/ja$c;->a:Ljava/util/Map;

    invoke-interface {v9, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_87
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ironsource/ja$c;->h:I

    iput-object p4, p0, Lcom/ironsource/ja$c;->i:[Ljava/lang/String;

    return-void
.end method

.method static synthetic e()Ljava/util/ArrayList;
    .registers 1

    invoke-static {}, Lcom/ironsource/ja$c;->h()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/ironsource/ja$c;)[Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/ja$c;->j()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/ja$c;)I
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/ja$c;->i()I

    move-result p0

    return p0
.end method

.method private static h()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ironsource/ja$c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private i()I
    .registers 2

    iget v0, p0, Lcom/ironsource/ja$c;->h:I

    return v0
.end method

.method private j()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/ja$c;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/ja$c;
    .registers 2

    const-class v0, Lcom/ironsource/ja$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/ja$c;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/ja$c;
    .registers 1

    sget-object v0, Lcom/ironsource/ja$c;->b:[Lcom/ironsource/ja$c;

    invoke-virtual {v0}, [Lcom/ironsource/ja$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/ja$c;

    return-object v0
.end method
