###### Class com.nearme.game.sdk.common.model.biz.a (com.nearme.game.sdk.common.model.biz.a)
.class public Lcom/nearme/game/sdk/common/model/biz/a;
.super Ljava/lang/Object;
.source "GameCenterSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d51e6151f2bee12L


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/a;->d:Z

    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/a;->e:Z

    iput v0, p0, Lcom/nearme/game/sdk/common/model/biz/a;->j:I

    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/a;->a:Z

    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nearme/game/sdk/common/model/biz/a;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/nearme/game/sdk/common/model/biz/a;->d:Z

    iput-boolean p5, p0, Lcom/nearme/game/sdk/common/model/biz/a;->e:Z

    iput p6, p0, Lcom/nearme/game/sdk/common/model/biz/a;->i:I

    return-void
.end method
