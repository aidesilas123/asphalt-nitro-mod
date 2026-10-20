###### Class io.didomi.drawable.C1945x8.b (io.didomi.sdk.x8$b)
.class final Lio/didomi/sdk/x8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/x8;->b(Landroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lio/didomi/sdk/t3;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lio/didomi/sdk/t3;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/x8$b;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lio/didomi/sdk/x8$b;->b:Lio/didomi/sdk/t3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/x8$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lio/didomi/sdk/x8$b;->b:Lio/didomi/sdk/t3;

    invoke-static {v0, v1}, Lio/didomi/sdk/x8;->a(Landroid/widget/TextView;Lio/didomi/sdk/t3;)V

    iget-object v0, p0, Lio/didomi/sdk/x8$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    iget-object v2, p0, Lio/didomi/sdk/x8$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    const v3, 0x3d75c28f    # 0.06f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method
