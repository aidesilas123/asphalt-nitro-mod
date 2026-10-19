###### Class com.nearme.game.sdk.common.model.biz.b (com.nearme.game.sdk.common.model.biz.b)
.class public Lcom/nearme/game/sdk/common/model/biz/b;
.super Ljava/lang/Object;
.source "ReportParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bdf3ea3080f00b8L


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nearme/game/sdk/common/model/biz/b;->c:I

    iput-object p4, p0, Lcom/nearme/game/sdk/common/model/biz/b;->d:Ljava/lang/String;

    return-void
.end method
