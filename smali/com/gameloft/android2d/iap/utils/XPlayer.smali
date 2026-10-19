###### Class com.gameloft.android2d.iap.utils.XPlayer (com.gameloft.android2d.iap.utils.XPlayer)
.class public final Lcom/gameloft/android2d/iap/utils/XPlayer;
.super Ljava/lang/Object;
.source "XPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android2d/iap/utils/XPlayer$Error;
    }
.end annotation


# static fields
.field static a:Lcom/gameloft/android2d/iap/utils/Device; = null

.field public static b:Z = true

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:[Lcom/gameloft/android2d/iap/utils/XPlayer$Error;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field protected j:Lcom/gameloft/android2d/iap/utils/c;

.field public k:J

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/gameloft/android2d/iap/utils/XPlayer$Error;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/XPlayer;->e:[Lcom/gameloft/android2d/iap/utils/XPlayer$Error;

    return-void
.end method

.method public constructor <init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->g:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->i:Ljava/lang/String;

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->a(Lcom/gameloft/android2d/iap/utils/Device;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/gameloft/android2d/iap/utils/Device;ZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->g:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->i:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/gameloft/android2d/iap/utils/XPlayer;->a(Lcom/gameloft/android2d/iap/utils/Device;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/gameloft/android2d/iap/utils/Device;ZLjava/lang/String;)V
    .registers 4

    sput-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->a:Lcom/gameloft/android2d/iap/utils/Device;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->d()V

    new-instance p1, Lcom/gameloft/android2d/iap/utils/c;

    invoke-direct {p1, p0, p2, p3}, Lcom/gameloft/android2d/iap/utils/c;-><init>(Lcom/gameloft/android2d/iap/utils/XPlayer;ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    sget-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    if-nez p1, :cond_15

    const-string p1, ""

    sput-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    goto :goto_1b

    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    :goto_1b
    return-void
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-object p0
.end method

.method public static getCarrier()Lcom/gameloft/android2d/iap/utils/a;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/XPlayer;->a:Lcom/gameloft/android2d/iap/utils/Device;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/Device;->a()Lcom/gameloft/android2d/iap/utils/a;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Lcom/gameloft/android2d/iap/utils/Device;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/XPlayer;->a:Lcom/gameloft/android2d/iap/utils/Device;

    return-object v0
.end method

.method public static getLastErrorCodeString()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/XPlayer;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "ERROR"

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x7c

    invoke-static {p0, p1, v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getValue(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, p1

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-lez v2, :cond_1b

    if-ne v3, v5, :cond_f

    return-object v4

    :cond_f
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_8

    :cond_1b
    if-ne v3, v5, :cond_1e

    return-object v4

    :cond_1e
    if-ne v0, v5, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_24
    if-lez p1, :cond_28

    add-int/lit8 v3, v3, 0x1

    :cond_28
    if-ne v3, v0, :cond_2d

    const-string p0, ""

    return-object p0

    :cond_2d
    if-le v3, v0, :cond_30

    return-object v4

    :cond_30
    sub-int p1, v0, v3

    :try_start_32
    new-array p1, p1, [C

    invoke-virtual {p0, v3, v0, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_3c} :catch_3d

    return-object p0

    :catch_3d
    return-object v4
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->h:Ljava/lang/String;

    return-object v0
.end method

.method d()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->f:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_16

    :cond_e
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->f:Ljava/lang/String;

    :cond_16
    :goto_16
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, ""

    return-object p1
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    iget-boolean v2, v0, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    :cond_12
    iget-object v0, v0, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_36

    const-string v2, ""

    if-eq v0, v2, :cond_36

    const-string v0, "EndTransactionRegistration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    const-string v0, "{\"status\":\"1\"}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_33

    const/16 p1, -0x3e8

    iput p1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return v3

    :cond_33
    iput v1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return v3

    :cond_36
    const/16 p1, 0x28

    iput p1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return v3
.end method

.method public i()Z
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    iget-boolean v2, v0, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    :cond_12
    iget-object v0, v0, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_1d

    const-string v2, ""

    if-eq v0, v2, :cond_1d

    iput v1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return v3

    :cond_1d
    const/16 v0, 0x28

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return v3
.end method

.method public j()Z
    .registers 6

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    iget-boolean v2, v0, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    :cond_12
    iget-object v0, v0, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_40

    const-string v2, ""

    if-eq v0, v2, :cond_40

    :try_start_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const v0, 0x7f1202f0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_40

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_3d} :catch_40

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :catch_40
    :cond_40
    return v3
.end method

.method public k()Z
    .registers 7

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    iget-boolean v1, v0, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget-object v0, v0, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_41

    const-string v1, ""

    if-eq v0, v1, :cond_41

    if-eqz v0, :cond_40

    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->s0:Ljava/lang/String;

    :cond_40
    return v2

    :cond_41
    const/16 v0, 0x28

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return v2
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->k:J

    const/4 v0, 0x1

    if-ne p3, v0, :cond_18

    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {p3, v0}, Lcom/gameloft/android2d/iap/utils/c;->f(I)V

    goto :goto_27

    :cond_18
    const/4 v0, 0x2

    if-ne p3, v0, :cond_21

    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {p3, v0}, Lcom/gameloft/android2d/iap/utils/c;->f(I)V

    goto :goto_27

    :cond_21
    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/gameloft/android2d/iap/utils/c;->f(I)V

    :goto_27
    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {p3, p1, p2}, Lcom/gameloft/android2d/iap/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "b=validatelimits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, -0x64

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->k:J

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android2d/iap/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->k:J

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/gameloft/android2d/iap/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserName()Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/Device;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12034c

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDemoCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->k:J

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->j:Lcom/gameloft/android2d/iap/utils/c;

    invoke-virtual {v1, p1, v0}, Lcom/gameloft/android2d/iap/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->i:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->h:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->g:Lorg/json/JSONObject;

    if-eqz p1, :cond_14

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->g:Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method

.method public s(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android2d/iap/utils/XPlayer;->l:I

    return-void
.end method

###### Class com.gameloft.android2d.iap.utils.XPlayer.Error (com.gameloft.android2d.iap.utils.XPlayer$Error)
.class public Lcom/gameloft/android2d/iap/utils/XPlayer$Error;
.super Ljava/lang/Object;
.source "XPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/utils/XPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static synthetic access$000(Lcom/gameloft/android2d/iap/utils/XPlayer$Error;)I
    .registers 1

    iget p0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer$Error;->a:I

    return p0
.end method

.method static synthetic access$100(Lcom/gameloft/android2d/iap/utils/XPlayer$Error;)I
    .registers 1

    iget p0, p0, Lcom/gameloft/android2d/iap/utils/XPlayer$Error;->b:I

    return p0
.end method
