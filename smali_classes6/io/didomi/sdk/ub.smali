###### Class io.didomi.drawable.ub (io.didomi.sdk.ub)
.class public final synthetic Lio/didomi/sdk/ub;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V7$a;

.field public final synthetic b:Lio/didomi/sdk/K7$a;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ub;->a:Lio/didomi/sdk/V7$a;

    iput-object p2, p0, Lio/didomi/sdk/ub;->b:Lio/didomi/sdk/K7$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ub;->a:Lio/didomi/sdk/V7$a;

    iget-object v1, p0, Lio/didomi/sdk/ub;->b:Lio/didomi/sdk/K7$a;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/L7;->c(Lio/didomi/sdk/V7$a;Lio/didomi/sdk/K7$a;Landroid/view/View;)V

    return-void
.end method
