###### Class com.facebook.ads.ExtraHints (com.facebook.ads.ExtraHints)
.class public Lcom/facebook/ads/ExtraHints;
.super Ljava/lang/Object;
.source "ExtraHints.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/ExtraHints$Builder;,
        Lcom/facebook/ads/ExtraHints$Keyword;,
        Lcom/facebook/ads/ExtraHints$HintType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HINTS_JSON_KEY:Ljava/lang/String; = "hints"

.field private static final KEYWORDS_MAX_COUNT:I = 0x5

.field private static final KEYWORD_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private final mHintsSerialized:Ljava/lang/String;

.field private final mMediationData:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/ExtraHints$HintType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/ExtraHints;->mMediationData:Ljava/lang/String;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/ExtraHints$HintType;

    invoke-static {v2}, Lcom/facebook/ads/ExtraHints$HintType;->access$000(Lcom/facebook/ads/ExtraHints$HintType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_34} :catch_35

    goto :goto_17

    :catch_35
    nop

    goto :goto_17

    :cond_37
    :try_start_37
    const-string p1, "hints"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3c} :catch_3c

    :catch_3c
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/ExtraHints;->mHintsSerialized:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/facebook/ads/ExtraHints$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/ExtraHints;-><init>(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHints()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/ExtraHints;->mHintsSerialized:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationData()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/ExtraHints;->mMediationData:Ljava/lang/String;

    return-object v0
.end method

###### Class com.facebook.ads.ExtraHints.AnonymousClass1 (com.facebook.ads.ExtraHints$1)
.class synthetic Lcom/facebook/ads/ExtraHints$1;
.super Ljava/lang/Object;
.source "ExtraHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.ads.ExtraHints.Builder (com.facebook.ads.ExtraHints$Builder)
.class public Lcom/facebook/ads/ExtraHints$Builder;
.super Ljava/lang/Object;
.source "ExtraHints.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mHints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/ExtraHints$HintType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediationData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/ads/ExtraHints;
    .registers 5

    new-instance v0, Lcom/facebook/ads/ExtraHints;

    iget-object v1, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/ads/ExtraHints$Builder;->mMediationData:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/ExtraHints;-><init>(Ljava/util/HashMap;Ljava/lang/String;Lcom/facebook/ads/ExtraHints$1;)V

    return-object v0
.end method

.method public contentUrl(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    sget-object v1, Lcom/facebook/ads/ExtraHints$HintType;->CONTENT_URL:Lcom/facebook/ads/ExtraHints$HintType;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public extraData(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/ExtraHints$Builder;->mHints:Ljava/util/HashMap;

    sget-object v1, Lcom/facebook/ads/ExtraHints$HintType;->EXTRA_DATA:Lcom/facebook/ads/ExtraHints$HintType;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public keywords(Ljava/util/List;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/ExtraHints$Keyword;",
            ">;)",
            "Lcom/facebook/ads/ExtraHints$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public mediationData(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Builder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    iput-object p1, p0, Lcom/facebook/ads/ExtraHints$Builder;->mMediationData:Ljava/lang/String;

    return-object p0
.end method

###### Class com.facebook.ads.ExtraHints.HintType (com.facebook.ads.ExtraHints$HintType)
.class public final enum Lcom/facebook/ads/ExtraHints$HintType;
.super Ljava/lang/Enum;
.source "ExtraHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/ExtraHints$HintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/ExtraHints$HintType;

.field public static final enum CONTENT_URL:Lcom/facebook/ads/ExtraHints$HintType;

.field public static final enum EXTRA_DATA:Lcom/facebook/ads/ExtraHints$HintType;

.field public static final enum KEYWORDS:Lcom/facebook/ads/ExtraHints$HintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/facebook/ads/ExtraHints$HintType;

    const-string v1, "KEYWORDS"

    const/4 v2, 0x0

    const-string v3, "keywords"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/ExtraHints$HintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$HintType;->KEYWORDS:Lcom/facebook/ads/ExtraHints$HintType;

    new-instance v1, Lcom/facebook/ads/ExtraHints$HintType;

    const-string v3, "CONTENT_URL"

    const/4 v4, 0x1

    const-string v5, "content_url"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/ads/ExtraHints$HintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/ads/ExtraHints$HintType;->CONTENT_URL:Lcom/facebook/ads/ExtraHints$HintType;

    new-instance v3, Lcom/facebook/ads/ExtraHints$HintType;

    const-string v5, "EXTRA_DATA"

    const/4 v6, 0x2

    const-string v7, "extra_data"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/ads/ExtraHints$HintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/ads/ExtraHints$HintType;->EXTRA_DATA:Lcom/facebook/ads/ExtraHints$HintType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/ads/ExtraHints$HintType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/facebook/ads/ExtraHints$HintType;->$VALUES:[Lcom/facebook/ads/ExtraHints$HintType;

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

    iput-object p3, p0, Lcom/facebook/ads/ExtraHints$HintType;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/ads/ExtraHints$HintType;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/ExtraHints$HintType;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$HintType;
    .registers 2

    const-class v0, Lcom/facebook/ads/ExtraHints$HintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/ExtraHints$HintType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/ExtraHints$HintType;
    .registers 1

    sget-object v0, Lcom/facebook/ads/ExtraHints$HintType;->$VALUES:[Lcom/facebook/ads/ExtraHints$HintType;

    invoke-virtual {v0}, [Lcom/facebook/ads/ExtraHints$HintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/ExtraHints$HintType;

    return-object v0
.end method

###### Class com.facebook.ads.ExtraHints.Keyword (com.facebook.ads.ExtraHints$Keyword)
.class public final enum Lcom/facebook/ads/ExtraHints$Keyword;
.super Ljava/lang/Enum;
.source "ExtraHints.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/ExtraHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/ExtraHints$Keyword;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ACCESSORIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ART_HISTORY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum AUTOMOTIVE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BEAUTY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BIOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BOARD_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BUSINESS_SOFTWARE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum BUYING_SELLING_HOMES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum CATS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum CELEBRITIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum CLOTHING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum COMIC_BOOKS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum DESKTOP_VIDEO:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum DOGS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum EDUCATION:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum EMAIL:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ENTERTAINMENT:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FAMILY_PARENTING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FASHION:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FINE_ART:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FOOD_DRINK:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum FRENCH_CUISINE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum GOVERNMENT:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HEALTH_FITNESS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HOBBIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HOME_GARDEN:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum HUMOR:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum INTERNET_TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LARGE_ANIMALS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LAW:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LEGAL_ISSUES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum LITERATURE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum MARKETING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum MOVIES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum MUSIC:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum NEWS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum PERSONAL_FINANCE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum PETS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum PHOTOGRAPHY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum POLITICS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum REAL_ESTATE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum ROLEPLAYING_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SCIENCE:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SHOPPING:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SOCIETY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum SPORTS:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum TELEVISION:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum TRAVEL:Lcom/facebook/ads/ExtraHints$Keyword;

.field public static final enum VIDEO_COMPUTER_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;


# instance fields
.field private mKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 53

    new-instance v0, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v1, "ACCESSORIES"

    const/4 v2, 0x0

    const-string v3, "accessories"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->ACCESSORIES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v1, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v3, "ART_HISTORY"

    const/4 v4, 0x1

    const-string v5, "art_history"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/ads/ExtraHints$Keyword;->ART_HISTORY:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v3, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v5, "AUTOMOTIVE"

    const/4 v6, 0x2

    const-string v7, "automotive"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/ads/ExtraHints$Keyword;->AUTOMOTIVE:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v5, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v7, "BEAUTY"

    const/4 v8, 0x3

    const-string v9, "beauty"

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/ads/ExtraHints$Keyword;->BEAUTY:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v7, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v9, "BIOLOGY"

    const/4 v10, 0x4

    const-string v11, "biology"

    invoke-direct {v7, v9, v10, v11}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/facebook/ads/ExtraHints$Keyword;->BIOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v9, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v11, "BOARD_GAMES"

    const/4 v12, 0x5

    const-string v13, "board_games"

    invoke-direct {v9, v11, v12, v13}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/facebook/ads/ExtraHints$Keyword;->BOARD_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v11, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v13, "BUSINESS_SOFTWARE"

    const/4 v14, 0x6

    const-string v15, "business_software"

    invoke-direct {v11, v13, v14, v15}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/facebook/ads/ExtraHints$Keyword;->BUSINESS_SOFTWARE:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v13, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "BUYING_SELLING_HOMES"

    const/4 v14, 0x7

    const-string v12, "buying_selling_homes"

    invoke-direct {v13, v15, v14, v12}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/facebook/ads/ExtraHints$Keyword;->BUYING_SELLING_HOMES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v12, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "CATS"

    const/16 v14, 0x8

    const-string v10, "cats"

    invoke-direct {v12, v15, v14, v10}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/facebook/ads/ExtraHints$Keyword;->CATS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v10, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "CELEBRITIES"

    const/16 v14, 0x9

    const-string v8, "celebrities"

    invoke-direct {v10, v15, v14, v8}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/facebook/ads/ExtraHints$Keyword;->CELEBRITIES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v8, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "CLOTHING"

    const/16 v14, 0xa

    const-string v6, "clothing"

    invoke-direct {v8, v15, v14, v6}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/facebook/ads/ExtraHints$Keyword;->CLOTHING:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v6, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "COMIC_BOOKS"

    const/16 v14, 0xb

    const-string v4, "comic_books"

    invoke-direct {v6, v15, v14, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/facebook/ads/ExtraHints$Keyword;->COMIC_BOOKS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "DESKTOP_VIDEO"

    const/16 v14, 0xc

    const-string v2, "desktop_video"

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->DESKTOP_VIDEO:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "DOGS"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "dogs"

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->DOGS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "EDUCATION"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "education"

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->EDUCATION:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "EMAIL"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "email"

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->EMAIL:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "ENTERTAINMENT"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "entertainment"

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->ENTERTAINMENT:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "FAMILY_PARENTING"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "family_parenting"

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->FAMILY_PARENTING:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "FASHION"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "fashion"

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->FASHION:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "FINE_ART"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "fine_art"

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->FINE_ART:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "FOOD_DRINK"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "food_drink"

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->FOOD_DRINK:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "FRENCH_CUISINE"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "french_cuisine"

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->FRENCH_CUISINE:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v15, "GOVERNMENT"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "government"

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->GOVERNMENT:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "HEALTH_FITNESS"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "health_fitness"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->HEALTH_FITNESS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "HOBBIES"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "hobbies"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->HOBBIES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "HOME_GARDEN"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "home_garden"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->HOME_GARDEN:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "HUMOR"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string v2, "humor"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->HUMOR:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "INTERNET_TECHNOLOGY"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string v4, "internet_technology"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->INTERNET_TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "LARGE_ANIMALS"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const-string v2, "large_animals"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->LARGE_ANIMALS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "LAW"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const-string v4, "law"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->LAW:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "LEGAL_ISSUES"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const-string v2, "legal_issues"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->LEGAL_ISSUES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "LITERATURE"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const-string v4, "literature"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->LITERATURE:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "MARKETING"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const-string v2, "marketing"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->MARKETING:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "MOVIES"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const-string v4, "movies"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->MOVIES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "MUSIC"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const-string v2, "music"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->MUSIC:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "NEWS"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const-string v4, "news"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->NEWS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "PERSONAL_FINANCE"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const-string v2, "personal_finance"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->PERSONAL_FINANCE:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "PETS"

    const/16 v15, 0x25

    move-object/from16 v40, v4

    const-string v4, "pets"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->PETS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "PHOTOGRAPHY"

    const/16 v15, 0x26

    move-object/from16 v41, v2

    const-string v2, "photography"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->PHOTOGRAPHY:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "POLITICS"

    const/16 v15, 0x27

    move-object/from16 v42, v4

    const-string v4, "politics"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->POLITICS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "REAL_ESTATE"

    const/16 v15, 0x28

    move-object/from16 v43, v2

    const-string v2, "real_estate"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->REAL_ESTATE:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "ROLEPLAYING_GAMES"

    const/16 v15, 0x29

    move-object/from16 v44, v4

    const-string v4, "roleplaying_games"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->ROLEPLAYING_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "SCIENCE"

    const/16 v15, 0x2a

    move-object/from16 v45, v2

    const-string v2, "science"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->SCIENCE:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "SHOPPING"

    const/16 v15, 0x2b

    move-object/from16 v46, v4

    const-string v4, "shopping"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->SHOPPING:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "SOCIETY"

    const/16 v15, 0x2c

    move-object/from16 v47, v2

    const-string v2, "society"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->SOCIETY:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "SPORTS"

    const/16 v15, 0x2d

    move-object/from16 v48, v4

    const-string v4, "sports"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->SPORTS:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "TECHNOLOGY"

    const/16 v15, 0x2e

    move-object/from16 v49, v2

    const-string v2, "technology"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->TECHNOLOGY:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "TELEVISION"

    const/16 v15, 0x2f

    move-object/from16 v50, v4

    const-string v4, "television"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->TELEVISION:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v4, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "TRAVEL"

    const/16 v15, 0x30

    move-object/from16 v51, v2

    const-string v2, "travel"

    invoke-direct {v4, v14, v15, v2}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->TRAVEL:Lcom/facebook/ads/ExtraHints$Keyword;

    new-instance v2, Lcom/facebook/ads/ExtraHints$Keyword;

    const-string v14, "VIDEO_COMPUTER_GAMES"

    const/16 v15, 0x31

    move-object/from16 v52, v4

    const-string v4, "video_computer_games"

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/ads/ExtraHints$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/ExtraHints$Keyword;->VIDEO_COMPUTER_GAMES:Lcom/facebook/ads/ExtraHints$Keyword;

    const/16 v4, 0x32

    new-array v4, v4, [Lcom/facebook/ads/ExtraHints$Keyword;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v37, v4, v0

    const/16 v0, 0x22

    aput-object v38, v4, v0

    const/16 v0, 0x23

    aput-object v39, v4, v0

    const/16 v0, 0x24

    aput-object v40, v4, v0

    const/16 v0, 0x25

    aput-object v41, v4, v0

    const/16 v0, 0x26

    aput-object v42, v4, v0

    const/16 v0, 0x27

    aput-object v43, v4, v0

    const/16 v0, 0x28

    aput-object v44, v4, v0

    const/16 v0, 0x29

    aput-object v45, v4, v0

    const/16 v0, 0x2a

    aput-object v46, v4, v0

    const/16 v0, 0x2b

    aput-object v47, v4, v0

    const/16 v0, 0x2c

    aput-object v48, v4, v0

    const/16 v0, 0x2d

    aput-object v49, v4, v0

    const/16 v0, 0x2e

    aput-object v50, v4, v0

    const/16 v0, 0x2f

    aput-object v51, v4, v0

    const/16 v0, 0x30

    aput-object v52, v4, v0

    const/16 v0, 0x31

    aput-object v2, v4, v0

    sput-object v4, Lcom/facebook/ads/ExtraHints$Keyword;->$VALUES:[Lcom/facebook/ads/ExtraHints$Keyword;

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

    iput-object p3, p0, Lcom/facebook/ads/ExtraHints$Keyword;->mKeyword:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/ExtraHints$Keyword;
    .registers 2

    const-class v0, Lcom/facebook/ads/ExtraHints$Keyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/ExtraHints$Keyword;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/ExtraHints$Keyword;
    .registers 1

    sget-object v0, Lcom/facebook/ads/ExtraHints$Keyword;->$VALUES:[Lcom/facebook/ads/ExtraHints$Keyword;

    invoke-virtual {v0}, [Lcom/facebook/ads/ExtraHints$Keyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/ExtraHints$Keyword;

    return-object v0
.end method
