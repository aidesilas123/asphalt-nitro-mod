###### Class com.gameloft.igp.IGPFreemiumActivity.i.a.b (com.gameloft.igp.IGPFreemiumActivity$i$a$b)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return-void
.end method
