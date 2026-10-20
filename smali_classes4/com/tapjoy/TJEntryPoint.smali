###### Class com.tapjoy.TJEntryPoint (com.tapjoy.TJEntryPoint)
.class public final enum Lcom/tapjoy/TJEntryPoint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJEntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/TJEntryPoint;

.field public static final enum b:Lcom/tapjoy/TJEntryPoint;

.field public static final enum c:Lcom/tapjoy/TJEntryPoint;

.field public static final enum d:Lcom/tapjoy/TJEntryPoint;

.field public static final enum e:Lcom/tapjoy/TJEntryPoint;

.field public static final enum f:Lcom/tapjoy/TJEntryPoint;

.field public static final enum g:Lcom/tapjoy/TJEntryPoint;

.field public static final enum h:Lcom/tapjoy/TJEntryPoint;

.field public static final enum i:Lcom/tapjoy/TJEntryPoint;

.field public static final enum j:Lcom/tapjoy/TJEntryPoint;

.field public static final synthetic k:[Lcom/tapjoy/TJEntryPoint;


# instance fields
.field public final l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/tapjoy/TJEntryPoint;

    const-string v1, "ENTRY_POINT_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TJEntryPoint;->a:Lcom/tapjoy/TJEntryPoint;

    new-instance v1, Lcom/tapjoy/TJEntryPoint;

    const-string v2, "ENTRY_POINT_OTHER"

    const-string v4, "other"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/tapjoy/TJEntryPoint;->b:Lcom/tapjoy/TJEntryPoint;

    new-instance v2, Lcom/tapjoy/TJEntryPoint;

    const-string v4, "ENTRY_POINT_MAIN_MENU"

    const-string v6, "main_menu"

    const/4 v7, 0x2

    invoke-direct {v2, v4, v6, v7}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/tapjoy/TJEntryPoint;->c:Lcom/tapjoy/TJEntryPoint;

    new-instance v4, Lcom/tapjoy/TJEntryPoint;

    const-string v6, "ENTRY_POINT_HUD"

    const-string v8, "hud"

    const/4 v9, 0x3

    invoke-direct {v4, v6, v8, v9}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/tapjoy/TJEntryPoint;->d:Lcom/tapjoy/TJEntryPoint;

    new-instance v6, Lcom/tapjoy/TJEntryPoint;

    const-string v8, "ENTRY_POINT_EXIT"

    const-string v10, "exit"

    const/4 v11, 0x4

    invoke-direct {v6, v8, v10, v11}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/tapjoy/TJEntryPoint;->e:Lcom/tapjoy/TJEntryPoint;

    new-instance v8, Lcom/tapjoy/TJEntryPoint;

    const-string v10, "ENTRY_POINT_FAIL"

    const-string v12, "fail"

    const/4 v13, 0x5

    invoke-direct {v8, v10, v12, v13}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Lcom/tapjoy/TJEntryPoint;->f:Lcom/tapjoy/TJEntryPoint;

    new-instance v10, Lcom/tapjoy/TJEntryPoint;

    const-string v12, "ENTRY_POINT_COMPLETE"

    const-string v14, "complete"

    const/4 v15, 0x6

    invoke-direct {v10, v12, v14, v15}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v10, Lcom/tapjoy/TJEntryPoint;->g:Lcom/tapjoy/TJEntryPoint;

    new-instance v12, Lcom/tapjoy/TJEntryPoint;

    const-string v14, "ENTRY_POINT_INBOX"

    const-string v15, "inbox"

    const/4 v13, 0x7

    invoke-direct {v12, v14, v15, v13}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Lcom/tapjoy/TJEntryPoint;->h:Lcom/tapjoy/TJEntryPoint;

    new-instance v14, Lcom/tapjoy/TJEntryPoint;

    const-string v15, "ENTRY_POINT_INIT"

    const-string v13, "initialisation"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v13, v11}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v14, Lcom/tapjoy/TJEntryPoint;->i:Lcom/tapjoy/TJEntryPoint;

    new-instance v13, Lcom/tapjoy/TJEntryPoint;

    const-string v15, "ENTRY_POINT_STORE"

    const-string v11, "store"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/tapjoy/TJEntryPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Lcom/tapjoy/TJEntryPoint;->j:Lcom/tapjoy/TJEntryPoint;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/tapjoy/TJEntryPoint;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    sput-object v11, Lcom/tapjoy/TJEntryPoint;->k:[Lcom/tapjoy/TJEntryPoint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/tapjoy/TJEntryPoint;->l:Ljava/lang/String;

    return-void
.end method

.method public static fromOrdinal(I)Lcom/tapjoy/TJEntryPoint;
    .registers 2

    invoke-static {}, Lcom/tapjoy/TJEntryPoint;->values()[Lcom/tapjoy/TJEntryPoint;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tapjoy/TJEntryPoint;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_94

    goto/16 :goto_72

    :sswitch_d
    const-string v0, "initialisation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_72

    :cond_17
    const/16 v1, 0x8

    goto/16 :goto_72

    :sswitch_1b
    const-string v0, "store"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_72

    :cond_24
    const/4 v1, 0x7

    goto :goto_72

    :sswitch_26
    const-string v0, "other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_72

    :cond_2f
    const/4 v1, 0x6

    goto :goto_72

    :sswitch_31
    const-string v0, "inbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_72

    :cond_3a
    const/4 v1, 0x5

    goto :goto_72

    :sswitch_3c
    const-string v0, "fail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_72

    :cond_45
    const/4 v1, 0x4

    goto :goto_72

    :sswitch_47
    const-string v0, "exit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto :goto_72

    :cond_50
    const/4 v1, 0x3

    goto :goto_72

    :sswitch_52
    const-string v0, "hud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_72

    :cond_5b
    const/4 v1, 0x2

    goto :goto_72

    :sswitch_5d
    const-string v0, "main_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto :goto_72

    :cond_66
    const/4 v1, 0x1

    goto :goto_72

    :sswitch_68
    const-string v0, "complete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    packed-switch v1, :pswitch_data_ba

    sget-object p0, Lcom/tapjoy/TJEntryPoint;->a:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_78
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->i:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_7b
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->j:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_7e
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->b:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_81
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->h:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_84
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->f:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_87
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->e:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_8a
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->d:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_8d
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->c:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    :pswitch_90
    sget-object p0, Lcom/tapjoy/TJEntryPoint;->g:Lcom/tapjoy/TJEntryPoint;

    return-object p0

    nop

    :sswitch_data_94
    .sparse-switch
        -0x23bacec7 -> :sswitch_68
        -0xef98bdb -> :sswitch_5d
        0x194f7 -> :sswitch_52
        0x2fb91e -> :sswitch_47
        0x2fd71e -> :sswitch_3c
        0x5fb2286 -> :sswitch_31
        0x6527f10 -> :sswitch_26
        0x68af8e1 -> :sswitch_1b
        0x6f078c47 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJEntryPoint;
    .registers 2

    const-class v0, Lcom/tapjoy/TJEntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJEntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJEntryPoint;
    .registers 1

    sget-object v0, Lcom/tapjoy/TJEntryPoint;->k:[Lcom/tapjoy/TJEntryPoint;

    invoke-virtual {v0}, [Lcom/tapjoy/TJEntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJEntryPoint;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJEntryPoint;->l:Ljava/lang/String;

    return-object v0
.end method
