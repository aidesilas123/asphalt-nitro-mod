###### Class io.didomi.drawable.hb (io.didomi.sdk.hb)
.class public final synthetic Lio/didomi/sdk/hb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/L6;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/L6;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/hb;->a:Lio/didomi/sdk/L6;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/hb;->a:Lio/didomi/sdk/L6;

    invoke-static {v0, p1}, Lio/didomi/sdk/L6;->g(Lio/didomi/sdk/L6;Landroid/view/View;)V

    return-void
.end method
