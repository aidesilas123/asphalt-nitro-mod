###### Class com.gameloft.android2d.iap.wrapper.Utils.c.a (com.gameloft.android2d.iap.wrapper.Utils$c$a)
.class Lcom/gameloft/android2d/iap/wrapper/Utils$c$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/wrapper/Utils$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/wrapper/Utils$c;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/wrapper/Utils$c;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/wrapper/Utils$c$a;->a:Lcom/gameloft/android2d/iap/wrapper/Utils$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
