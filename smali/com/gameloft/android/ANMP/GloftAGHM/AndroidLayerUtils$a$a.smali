###### Class com.gameloft.android.ANMP.GloftAGHM.AndroidLayerUtils.a.DialogInterfaceOnClickListenerC0208a (com.gameloft.android.ANMP.GloftAGHM.AndroidLayerUtils$a$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a$a;
.super Ljava/lang/Object;
.source "AndroidLayerUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/AndroidLayerUtils;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
