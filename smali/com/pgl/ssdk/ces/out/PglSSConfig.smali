###### Class com.pgl.ssdk.ces.out.PglSSConfig (com.pgl.ssdk.ces.out.PglSSConfig)
.class public final Lcom/pgl/ssdk/ces/out/PglSSConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COLLECT_MODE_DEFAULT:I = 0x0

.field public static final COLLECT_MODE_ML_MINIMIZE:I = 0x1

.field public static final OVREGION_TYPE_CN:I = 0x2

.field public static final OVREGION_TYPE_SG:I = 0x0

.field public static final OVREGION_TYPE_UNKNOWN:I = -0x1

.field public static final OVREGION_TYPE_VA:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/util/Map;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->a:Ljava/lang/String;

    iput p2, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->b:I

    iput p3, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->c:I

    iput p4, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->d:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/pgl/ssdk/ces/out/PglSSConfig$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pgl/ssdk/ces/out/PglSSConfig;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static builder()Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;
    .registers 1

    new-instance v0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;

    invoke-direct {v0}, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAdSdkVersionCode()I
    .registers 2

    iget v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->d:I

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCnReportUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCnTokenUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectMode()I
    .registers 2

    iget v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->c:I

    return v0
.end method

.method public getCustomInfo()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->e:Ljava/util/Map;

    return-object v0
.end method

.method public getOVRegionType()I
    .registers 2

    iget v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->b:I

    return v0
.end method

.method public setCnReportUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public setCnTokenUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->g:Ljava/lang/String;

    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig;->e:Ljava/util/Map;

    return-void
.end method

###### Class com.pgl.ssdk.ces.out.PglSSConfig.AnonymousClass1 (com.pgl.ssdk.ces.out.PglSSConfig$1)
.class synthetic Lcom/pgl/ssdk/ces/out/PglSSConfig$1;
.super Ljava/lang/Object;
.source ""

###### Class com.pgl.ssdk.ces.out.PglSSConfig.Builder (com.pgl.ssdk.ces.out.PglSSConfig$Builder)
.class public Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->c:I

    return-void
.end method


# virtual methods
.method public build()Lcom/pgl/ssdk/ces/out/PglSSConfig;
    .registers 8

    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget v3, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->b:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v3, v0, :cond_12

    if-eq v3, v1, :cond_12

    if-nez v3, :cond_25

    :cond_12
    iget v4, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->c:I

    if-eqz v4, :cond_19

    if-eq v4, v1, :cond_19

    goto :goto_25

    :cond_19
    new-instance v0, Lcom/pgl/ssdk/ces/out/PglSSConfig;

    iget-object v2, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->a:Ljava/lang/String;

    iget v5, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->d:I

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/pgl/ssdk/ces/out/PglSSConfig;-><init>(Ljava/lang/String;IIILcom/pgl/ssdk/ces/out/PglSSConfig$1;)V

    return-object v0

    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdsdkVersionCode(I)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->d:I

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setCollectMode(I)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->c:I

    return-object p0
.end method

.method public setOVRegionType(I)Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/pgl/ssdk/ces/out/PglSSConfig$Builder;->b:I

    return-object p0
.end method
