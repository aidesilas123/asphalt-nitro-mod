###### Class com.kidoz.sdk.api.general.WidgetEventMessage (com.kidoz.sdk.api.general.WidgetEventMessage)
.class public Lcom/kidoz/sdk/api/general/WidgetEventMessage;
.super Lcom/kidoz/sdk/api/general/EventMessage;
.source "WidgetEventMessage.java"


# instance fields
.field private mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/WidgetEventMessage;->mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    return-void
.end method


# virtual methods
.method public getWidgetType()Lcom/kidoz/sdk/api/general/enums/WidgetType;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/WidgetEventMessage;->mWidgetType:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    return-object v0
.end method
