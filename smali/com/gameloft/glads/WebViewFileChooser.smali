###### Class com.gameloft.glads.WebViewFileChooser (com.gameloft.glads.WebViewFileChooser)
.class Lcom/gameloft/glads/WebViewFileChooser;
.super Ljava/lang/Object;
.source "WebViewFileChooser.java"


# static fields
.field private static a:Ljava/lang/String; = "image/*"

.field private static b:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CanTakePhotoFromBuffer()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "asus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "sm-g928f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    return v0

    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private static Close([Landroid/net/Uri;)V
    .registers 2

    sget-object v0, Lcom/gameloft/glads/WebViewFileChooser;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_7
    const/4 p0, 0x0

    sput-object p0, Lcom/gameloft/glads/WebViewFileChooser;->b:Landroid/webkit/ValueCallback;

    return-void
.end method

.method private static FilePicker()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/gameloft/glads/WebViewFileChooser;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Select File"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x230e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V

    :goto_24
    return-void
.end method

.method private static HandleFilePickerResponse(IILandroid/content/Intent;)V
    .registers 4

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-static {p0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V

    return-void

    :cond_8
    const/4 p1, 0x1

    :try_start_9
    new-array p1, p1, [Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p1, v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    move-object p0, p1

    :catch_17
    invoke-static {p0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V

    return-void
.end method

.method private static HandleTakePictureResponse(IILandroid/content/Intent;)V
    .registers 12

    const-string p0, "_data"

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_a

    invoke-static {v0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/gameloft/glads/WebViewFileChooser;->CanTakePhotoFromBuffer()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_70

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "data"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p2, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "GL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    new-array p0, v1, [Landroid/net/Uri;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p0, v2

    goto :goto_9e

    :cond_70
    const-string p1, "_id"

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_87
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a0

    new-array p0, v1, [Landroid/net/Uri;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p0, v2

    :goto_9e
    move-object v0, p0

    goto :goto_a6

    :cond_a0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a4} :catch_a6

    if-nez p2, :cond_87

    :catch_a6
    :goto_a6
    invoke-static {v0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V

    return-void
.end method

.method static ShowFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    sget-object p1, Lcom/gameloft/glads/WebViewFileChooser;->b:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_8
    sput-object p0, Lcom/gameloft/glads/WebViewFileChooser;->b:Landroid/webkit/ValueCallback;

    invoke-static {}, Lcom/gameloft/glads/WebViewFileChooser;->ShowSelectionMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method private static ShowSelectionMenu()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Take Photo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Choose from Library"

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Add Photo!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/gameloft/glads/WebViewFileChooser$a;

    invoke-direct {v2}, Lcom/gameloft/glads/WebViewFileChooser$a;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/gameloft/glads/WebViewFileChooser$b;

    invoke-direct {v0}, Lcom/gameloft/glads/WebViewFileChooser$b;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static TakePicture()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1d

    const v3, 0x230e7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24

    :cond_1d
    invoke-static {v0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_24

    :catch_21
    invoke-static {v0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V

    :goto_24
    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    invoke-static {}, Lcom/gameloft/glads/WebViewFileChooser;->TakePicture()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    invoke-static {}, Lcom/gameloft/glads/WebViewFileChooser;->FilePicker()V

    return-void
.end method

.method static synthetic access$200([Landroid/net/Uri;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/glads/WebViewFileChooser;->Close([Landroid/net/Uri;)V

    return-void
.end method

.method static onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return p0

    :pswitch_6
    invoke-static {p0, p1, p2}, Lcom/gameloft/glads/WebViewFileChooser;->HandleFilePickerResponse(IILandroid/content/Intent;)V

    return v0

    :pswitch_a
    invoke-static {p0, p1, p2}, Lcom/gameloft/glads/WebViewFileChooser;->HandleTakePictureResponse(IILandroid/content/Intent;)V

    return v0

    :pswitch_data_e
    .packed-switch 0x230e7
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method
