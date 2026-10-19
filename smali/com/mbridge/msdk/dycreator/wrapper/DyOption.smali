###### Class com.mbridge.msdk.dycreator.wrapper.DyOption (com.mbridge.msdk.dycreator.wrapper.DyOption)
.class public Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
.super Ljava/lang/Object;
.source "DyOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;,
        Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/File;

.field private c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->a(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->b(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->c(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->d(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->e(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->g:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->f(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->g(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->f:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->h(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->h:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->i(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->j:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->j(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->i:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->k(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->k:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->l(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->l:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->m(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->m:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->n(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->n:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->o(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->o:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->p(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->q:I

    return-void
.end method


# virtual methods
.method public getAdChoiceLink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getCountDownTime()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->o:I

    return v0
.end method

.method public getCurrentCountDown()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->p:I

    return v0
.end method

.method public getDyAdType()Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->b:Ljava/io/File;

    return-object v0
.end method

.method public getFileDirs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->a:Ljava/util/List;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->n:I

    return v0
.end method

.method public getShakeStrenght()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->l:I

    return v0
.end method

.method public getShakeTime()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->m:I

    return v0
.end method

.method public getTemplateType()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->q:I

    return v0
.end method

.method public isApkInfoVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->j:Z

    return v0
.end method

.method public isCanSkip()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->g:Z

    return v0
.end method

.method public isClickButtonVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->h:Z

    return v0
.end method

.method public isClickScreen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->f:Z

    return v0
.end method

.method public isLogoVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->k:Z

    return v0
.end method

.method public isShakeVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->i:Z

    return v0
.end method

.method public setDyCountDownListener(I)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->r:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;->getCountDownValue(I)V

    :cond_7
    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->p:I

    return-void
.end method

.method public setDyCountDownListenerWrapper(Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->r:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;

    return-void
.end method

###### Class com.mbridge.msdk.dycreator.wrapper.DyOption.Builder (com.mbridge.msdk.dycreator.wrapper.DyOption$Builder)
.class public Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;
.super Ljava/lang/Object;
.source "DyOption.java"

# interfaces
.implements Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/File;

.field private c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->i:Z

    return p0
.end method

.method static synthetic k(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->l:I

    return p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->m:I

    return p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->n:I

    return p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->o:I

    return p0
.end method

.method static synthetic p(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->p:I

    return p0
.end method


# virtual methods
.method public adChoiceLink(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;-><init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)V

    return-object v0
.end method

.method public campaignEx(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method public canSkip(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->e:Z

    return-object p0
.end method

.method public countDownTime(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->o:I

    return-object p0
.end method

.method public dyAdType(Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->b:Ljava/io/File;

    return-object p0
.end method

.method public fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->a:Ljava/util/List;

    return-object p0
.end method

.method public isApkInfoVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->j:Z

    return-object p0
.end method

.method public isClickButtonVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->h:Z

    return-object p0
.end method

.method public isLogoVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->k:Z

    return-object p0
.end method

.method public isScreenClick(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->g:Z

    return-object p0
.end method

.method public isShakeVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->i:Z

    return-object p0
.end method

.method public orientation(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->n:I

    return-object p0
.end method

.method public shakeStrenght(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->l:I

    return-object p0
.end method

.method public shakeTime(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->m:I

    return-object p0
.end method

.method public templateType(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->p:I

    return-object p0
.end method

###### Class com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder (com.mbridge.msdk.dycreator.wrapper.DyOption$IViewOptionBuilder)
.class public interface abstract Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.super Ljava/lang/Object;
.source "DyOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IViewOptionBuilder"
.end annotation


# virtual methods
.method public abstract adChoiceLink(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract build()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
.end method

.method public abstract campaignEx(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract canSkip(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract countDownTime(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract dyAdType(Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract file(Ljava/io/File;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;"
        }
    .end annotation
.end method

.method public abstract isApkInfoVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract isClickButtonVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract isLogoVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract isScreenClick(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract isShakeVisible(Z)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract orientation(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract shakeStrenght(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract shakeTime(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method

.method public abstract templateType(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
.end method
