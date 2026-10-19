###### Class com.gameloft.igp.IGPFreemiumActivity.i.a.DialogInterfaceOnCancelListenerC0219a (com.gameloft.igp.IGPFreemiumActivity$i$a$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$i$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return-void
.end method
