###### Class io.didomi.drawable.xf (io.didomi.sdk.xf)
.class public final synthetic Lio/didomi/sdk/xf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/xf;->a:Landroid/view/View;

    iput-object p2, p0, Lio/didomi/sdk/xf;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/xf;->a:Landroid/view/View;

    iget-object v1, p0, Lio/didomi/sdk/xf;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, p1, p2, p3}, Lio/didomi/sdk/x7;->c(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
