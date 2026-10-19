###### Class io.didomi.drawable.qc (io.didomi.sdk.qc)
.class public final synthetic Lio/didomi/sdk/qc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Q;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/qc;->a:Lio/didomi/sdk/Q;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/qc;->a:Lio/didomi/sdk/Q;

    invoke-static {v0, p1}, Lio/didomi/sdk/Q;->u(Lio/didomi/sdk/Q;Landroid/view/View;)V

    return-void
.end method
