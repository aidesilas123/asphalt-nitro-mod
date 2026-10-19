###### Class io.didomi.drawable.kd (io.didomi.sdk.kd)
.class public final synthetic Lio/didomi/sdk/kd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/f2;

.field public final synthetic b:Lio/didomi/sdk/V7$i;

.field public final synthetic c:Lio/didomi/sdk/K7$a;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/kd;->a:Lio/didomi/sdk/f2;

    iput-object p2, p0, Lio/didomi/sdk/kd;->b:Lio/didomi/sdk/V7$i;

    iput-object p3, p0, Lio/didomi/sdk/kd;->c:Lio/didomi/sdk/K7$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/kd;->a:Lio/didomi/sdk/f2;

    iget-object v1, p0, Lio/didomi/sdk/kd;->b:Lio/didomi/sdk/V7$i;

    iget-object v2, p0, Lio/didomi/sdk/kd;->c:Lio/didomi/sdk/K7$a;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/W7;->b(Lio/didomi/sdk/f2;Lio/didomi/sdk/V7$i;Lio/didomi/sdk/K7$a;Landroid/view/View;)V

    return-void
.end method
