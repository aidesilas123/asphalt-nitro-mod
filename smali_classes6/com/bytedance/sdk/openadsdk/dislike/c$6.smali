###### Class com.bytedance.sdk.openadsdk.dislike.c.AnonymousClass6 (com.bytedance.sdk.openadsdk.dislike.c$6)
.class Lcom/bytedance/sdk/openadsdk/dislike/c$6;
.super Ljava/lang/Object;
.source "TTDislikeDialogDefault.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$6;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$6;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p2

    if-eqz p2, :cond_1b

    :try_start_8
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$6;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1b

    :catchall_1b
    :cond_1b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$6;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
