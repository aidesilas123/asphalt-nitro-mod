###### Class io.didomi.drawable.o9 (io.didomi.sdk.o9)
.class public final synthetic Lio/didomi/sdk/o9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/I1;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/I1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/o9;->a:Lio/didomi/sdk/I1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/o9;->a:Lio/didomi/sdk/I1;

    invoke-static {v0, p1}, Lio/didomi/sdk/A6;->b(Lio/didomi/sdk/I1;Landroid/view/View;)V

    return-void
.end method
