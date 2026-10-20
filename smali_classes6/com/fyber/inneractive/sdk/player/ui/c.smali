###### Class com.fyber.inneractive.sdk.player.ui.c (com.fyber.inneractive.sdk.player.ui.c)
.class public Lcom/fyber/inneractive/sdk/player/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:F

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public g:Landroid/view/View;

.field public h:Lcom/fyber/inneractive/sdk/model/vast/h;

.field public i:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

.field public j:I

.field public k:Lcom/fyber/inneractive/sdk/ignite/k;

.field public l:Z

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/ui/c;->d:F

    sget-object v0, Lcom/fyber/inneractive/sdk/config/global/features/r$c;->NONE:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/ui/c;->i:Lcom/fyber/inneractive/sdk/config/global/features/r$c;

    return-void
.end method
