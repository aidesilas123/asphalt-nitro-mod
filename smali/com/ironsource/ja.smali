###### Class com.json.ja (com.ironsource.ja)
.class public Lcom/ironsource/ja;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/ja$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.google.market"

.field public static final b:Ljava/lang/String; = "com.android.vending"

.field public static final c:Ljava/lang/String; = "isInstalled"

.field private static final d:Ljava/lang/String; = "ja"

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/ja$a;

    invoke-direct {v0}, Lcom/ironsource/ja$a;-><init>()V

    sput-object v0, Lcom/ironsource/ja;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 2

    sget-object v0, Lcom/ironsource/ja;->e:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/ironsource/ja;->b(Landroid/content/Context;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcom/ironsource/ja;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/ironsource/ja;->c(Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_d

    :catch_2d
    sget-object p0, Lcom/ironsource/ja;->d:Ljava/lang/String;

    const-string p1, "Error while extracting packages installation data"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 12

    invoke-static {}, Lcom/ironsource/ja$c;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ironsource/ja;->b(Landroid/content/Context;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {}, Lcom/ironsource/ja$c;->values()[Lcom/ironsource/ja$c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v3, v1, :cond_43

    aget-object v5, v0, v3

    invoke-static {v5}, Lcom/ironsource/ja$c;->f(Lcom/ironsource/ja$c;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v7, :cond_40

    aget-object v9, v6, v8

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_3d

    const-string v10, "isInstalled"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    int-to-double v6, v4

    invoke-static {v5}, Lcom/ironsource/ja$c;->g(Lcom/ironsource/ja$c;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    double-to-int v4, v6

    goto :goto_40

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static c(Z)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/ironsource/ja$b;

    invoke-direct {v0, p0}, Lcom/ironsource/ja$b;-><init>(Z)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Lcom/ironsource/ja;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "isInstalled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/l5;->c()Lcom/ironsource/e5;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ironsource/e5;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_24

    goto :goto_15

    :cond_24
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2e
    return-object v0
.end method

###### Class com.ironsource.ja.a (com.ironsource.ja$a)
.class Lcom/ironsource/ja$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.google.market"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.ironsource.ja.b (com.ironsource.ja$b)
.class Lcom/ironsource/ja$b;
.super Lorg/json/JSONObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/ja;->c(Z)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/ironsource/ja$b;->a:Z

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "isInstalled"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

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
