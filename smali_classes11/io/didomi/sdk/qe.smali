###### Class io.didomi.drawable.qe (io.didomi.sdk.qe)
.class public final synthetic Lio/didomi/sdk/qe;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/qe;->a:Landroid/view/View;

    iput-object p2, p0, Lio/didomi/sdk/qe;->b:Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lio/didomi/sdk/qe;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/didomi/sdk/qe;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/qe;->a:Landroid/view/View;

    iget-object v1, p0, Lio/didomi/sdk/qe;->b:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/didomi/sdk/qe;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/didomi/sdk/qe;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/didomi/sdk/j9;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
