###### Class com.gameloft.adsmanager.IronSourceIncentivized (com.gameloft.adsmanager.IronSourceIncentivized)
.class public Lcom/gameloft/adsmanager/IronSourceIncentivized;
.super Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;
.source "IronSourceIncentivized.java"


# static fields
.field private static final MAXIMUM_IRONSOURCE_SID_LENGTH:I = 0x80


# instance fields
.field public UUID:Ljava/lang/String;

.field private parent:Lcom/gameloft/adsmanager/IronSource;

.field public sdkLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;-><init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->parent:Lcom/gameloft/adsmanager/IronSource;

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/adsmanager/IronSourceIncentivized;)Lcom/gameloft/adsmanager/IronSource;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->parent:Lcom/gameloft/adsmanager/IronSource;

    return-object p0
.end method


# virtual methods
.method public Close()V
    .registers 1

    return-void
.end method

.method public Destroy()V
    .registers 1

    return-void
.end method

.method public IsValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p3, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->UUID:Ljava/lang/String;

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->parent:Lcom/gameloft/adsmanager/IronSource;

    iput-object p0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "||"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pmc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sid = ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "IronSourceIncentivized.java"

    const-string v0, "Show"

    invoke-static {p3, v0, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x80

    if-le p2, v1, :cond_5c

    const-string p2, "The sid has a length of more then 128 characters, IronSource may not send it as part of the server to server payload"

    invoke-static {p3, v0, p2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setDynamicUserId(Ljava/lang/String;)Z

    sget-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance p2, Lcom/gameloft/adsmanager/IronSourceIncentivized$1;

    invoke-direct {p2, p0}, Lcom/gameloft/adsmanager/IronSourceIncentivized$1;-><init>(Lcom/gameloft/adsmanager/IronSourceIncentivized;)V

    new-instance p3, Lcom/gameloft/adsmanager/IronSourceIncentivized$2;

    invoke-direct {p3, p0}, Lcom/gameloft/adsmanager/IronSourceIncentivized$2;-><init>(Lcom/gameloft/adsmanager/IronSourceIncentivized;)V

    invoke-static {p1, p2, p3}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
