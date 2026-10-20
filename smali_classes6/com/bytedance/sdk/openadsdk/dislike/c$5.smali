###### Class com.bytedance.sdk.openadsdk.dislike.c.AnonymousClass5 (com.bytedance.sdk.openadsdk.dislike.c$5)
.class Lcom/bytedance/sdk/openadsdk/dislike/c$5;
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

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

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p2

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/dislike/c$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    :cond_26
    return-void

    :catchall_27
    nop

    :cond_28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p1

    if-eqz p1, :cond_45

    :try_start_30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c;)Lcom/bytedance/sdk/openadsdk/dislike/c$a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dislike/c;->c(Lcom/bytedance/sdk/openadsdk/dislike/c;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/dislike/c$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_45

    :catchall_45
    :cond_45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
