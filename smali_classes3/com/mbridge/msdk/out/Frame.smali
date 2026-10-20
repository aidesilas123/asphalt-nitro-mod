###### Class com.mbridge.msdk.out.Frame (com.mbridge.msdk.out.Frame)
.class public Lcom/mbridge/msdk/out/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private campaigns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private parentSessionId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private template:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampaigns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/out/Frame;->campaigns:Ljava/util/List;

    return-object v0
.end method

.method public getParentSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/Frame;->parentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/Frame;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/out/Frame;->template:I

    return v0
.end method

.method public setCampaigns(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/out/Frame;->campaigns:Ljava/util/List;

    return-void
.end method

.method public setParentSessionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/out/Frame;->parentSessionId:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/out/Frame;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/out/Frame;->template:I

    return-void
.end method
