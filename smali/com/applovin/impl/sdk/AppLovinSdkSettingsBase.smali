###### Class com.applovin.impl.sdk.AppLovinSdkSettingsBase (com.applovin.impl.sdk.AppLovinSdkSettingsBase)
.class public Lcom/applovin/impl/sdk/AppLovinSdkSettingsBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected backingConsentFlowSettings:Lcom/applovin/sdk/AppLovinSdkSettings$TermsAndPrivacyPolicyFlowSettings;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackingConsentFlowSettings()Lcom/applovin/sdk/AppLovinSdkSettings$TermsAndPrivacyPolicyFlowSettings;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkSettingsBase;->backingConsentFlowSettings:Lcom/applovin/sdk/AppLovinSdkSettings$TermsAndPrivacyPolicyFlowSettings;

    return-object v0
.end method
