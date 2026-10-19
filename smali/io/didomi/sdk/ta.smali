###### Class io.didomi.drawable.ta (io.didomi.sdk.ta)
.class public final synthetic Lio/didomi/sdk/ta;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/K4;

.field public final synthetic b:Lio/didomi/sdk/E4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ta;->a:Lio/didomi/sdk/K4;

    iput-object p2, p0, Lio/didomi/sdk/ta;->b:Lio/didomi/sdk/E4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ta;->a:Lio/didomi/sdk/K4;

    iget-object v1, p0, Lio/didomi/sdk/ta;->b:Lio/didomi/sdk/E4;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/K4;->c(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;Landroid/view/View;)V

    return-void
.end method
