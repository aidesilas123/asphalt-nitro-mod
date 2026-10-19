package com.gameloft.android2d.iap.utils;

import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventTypes;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.billings.BillingFactory;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: compiled from: IABXMLParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends DefaultHandler {
    private final String a = "IAP-IABXMLParser";
    boolean b = false;
    boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f2904d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f2905e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public g f2906f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.gameloft.android2d.iap.billings.a f2907g = null;
    public JSONObject h = null;
    public JSONObject i = null;
    public JSONArray j = null;
    private h k = null;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;

    public h a() {
        return this.k;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (this.b) {
            this.f2904d += new String(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        try {
            this.b = false;
            this.f2904d = this.f2904d.trim();
            if (this.l) {
                if (str2.equals("country")) {
                    this.k.R(this.f2904d.trim());
                } else if (str2.equals("operator")) {
                    this.k.W(this.f2904d.trim());
                } else if (str2.equals(AppLovinEventTypes.USER_VIEWED_PRODUCT)) {
                    this.k.c0(this.f2904d.trim());
                } else if (str2.equals("platform")) {
                    this.k.a0(this.f2904d.trim());
                } else if (str2.equals("language")) {
                    this.k.U(this.f2904d.trim());
                } else if (str2.equals("promo_description")) {
                    String str4 = this.f2904d;
                    if (str4 != null) {
                        this.k.d0(str4.trim());
                    }
                } else if (str2.equals("promo_endtime")) {
                    String str5 = this.f2904d;
                    if (str5 != null) {
                        this.k.f0(str5.trim());
                    }
                } else if (str2.equals("server_time")) {
                    String str6 = this.f2904d;
                    if (str6 != null) {
                        this.k.g0(str6.trim());
                    }
                } else if (str2.equals("limits_validation_url")) {
                    this.k.j0(this.f2904d.trim());
                } else if (str2.equals("check_limit_url")) {
                    this.k.O(this.f2904d.trim());
                } else if (str2.equals("text")) {
                    String str7 = this.f2904d;
                    if (str7 != null) {
                        this.k.e(this.f2905e, str7.trim());
                    }
                } else if (str2.equals("cash")) {
                    this.k.X(this.f2904d.trim() + ",");
                } else if (str2.equals("coin")) {
                    this.k.Y(this.f2904d.trim() + ",");
                } else if (str2.equals("flow_type")) {
                    this.k.S(SUtils.parseIntNumber(this.f2904d.trim()));
                } else if (str2.equals("shop_anon_id")) {
                    this.k.h0(this.f2904d.trim());
                } else if (str2.equals("cashcard_game_id")) {
                    this.k.i0(this.f2904d.trim());
                } else if (str2.equals("shop_info")) {
                    this.l = false;
                }
            } else if (this.m) {
                if (this.o) {
                    try {
                        if (this.p) {
                            if (str2.equals("type")) {
                                this.i.put("type", this.f2904d.trim());
                            } else if (str2.equals("amount")) {
                                this.i.put("amount", this.f2904d.trim());
                            } else if (str2.equals("bundle_item")) {
                                this.j.put(this.i);
                                this.p = false;
                            }
                        }
                        if (str2.equals("bundle")) {
                            this.h.put("bundle_item", this.j);
                            this.f2906f.g("bundle", this.h.toString());
                            this.o = false;
                        }
                    } catch (JSONException unused) {
                        this.p = false;
                        this.o = false;
                    }
                } else if (this.n) {
                    if (str2.equals("billing")) {
                        this.f2907g.g0(this.f2906f.x());
                        this.f2906f.h(this.f2907g);
                    } else if (str2.equals("shenzhoufu_billing")) {
                        this.f2907g.z0(this.f2904d.trim());
                    } else if (str2.equals("shenzhoufu_get_billing_result")) {
                        this.f2907g.e0(this.f2904d.trim());
                    } else if (str2.equals("msg_shenzhoufu_notice")) {
                        this.f2907g.k0(this.f2904d.trim());
                    } else if (str2.equals("shortcode")) {
                        this.f2907g.v0(this.f2904d.trim());
                    } else if (str2.equals("shortcode1")) {
                        this.f2907g.w0(this.f2904d.trim());
                    } else if (str2.equals("shortcode2")) {
                        this.f2907g.x0(this.f2904d.trim());
                    } else if (str2.equals("alias")) {
                        this.f2907g.c0(this.f2904d.trim());
                    } else if (str2.equals("ump_get_transid")) {
                        this.f2907g.z0(this.f2904d.trim());
                    } else if (str2.equals("ump_get_billing_result")) {
                        this.f2907g.e0(this.f2904d.trim());
                    } else if (str2.equals("msg_psms_notice_1")) {
                        this.f2907g.i0(this.f2904d.trim());
                    } else if (str2.equals("msg_psms_notice_2")) {
                        this.f2907g.j0(this.f2904d.trim());
                    } else if (str2.equals("type")) {
                        this.f2907g.A0(this.f2904d.trim());
                    } else if (str2.equals("price")) {
                        this.f2907g.q0(this.f2904d.trim());
                    } else if (str2.equals("currency")) {
                        this.f2907g.h0(this.f2904d.trim());
                    } else if (str2.equals("formatted_price")) {
                        this.f2907g.m0(this.f2904d.trim());
                    } else if (str2.equals("tnc")) {
                        this.f2907g.y0(this.f2904d.trim());
                    } else if (str2.equals("url")) {
                        this.f2907g.C0(this.f2904d.trim());
                    } else if (str2.equals("uid") || str2.equals(AppLovinEventParameters.PRODUCT_IDENTIFIER) || str2.equals("samsung_item_id")) {
                        this.f2907g.B0(this.f2904d.trim());
                    } else if (str2.equals("money")) {
                        this.f2907g.o0(this.f2904d.trim());
                    } else if (str2.equals("is_3g_only")) {
                        this.f2907g.n0(this.f2904d.trim());
                    } else if (str2.equals("pid")) {
                        this.f2907g.p0(this.f2904d.trim());
                    } else if (str2.equals("id")) {
                        this.f2907g.s0(this.f2904d.trim());
                    } else if (str2.equals("proxy")) {
                        this.f2907g.u0(this.f2904d.trim());
                    } else if (str2.equals("port")) {
                        this.f2907g.t0(this.f2904d.trim());
                    } else if (str2.equals("price_point")) {
                        this.f2907g.r0(this.f2904d.trim());
                    } else if (str2.equals("flow_type")) {
                        this.f2907g.l0(SUtils.parseIntNumber(this.f2904d.trim()));
                    } else if (str2.equals("bill_type")) {
                        this.f2907g.d0(this.f2904d);
                    } else if (str2.equals("text")) {
                        String str8 = this.f2904d;
                        if (str8 != null) {
                            this.f2907g.o(this.f2905e, str8.trim());
                        }
                    } else if (str2.equals("billing_list")) {
                        this.n = false;
                    }
                } else if (str2.equals(AppLovinEventTypes.USER_VIEWED_CONTENT)) {
                    this.k.d(this.f2906f);
                } else if (str2.equals("attribute")) {
                    this.f2906f.g(this.f2905e, this.f2904d.trim());
                    this.f2905e = null;
                } else if (str2.equals("billing_type_pref")) {
                    this.f2906f.S(this.f2904d.trim());
                } else if (str2.equals("content_list")) {
                    this.m = false;
                } else if (str2.equals("offline_item")) {
                    this.f2906f.a(this.f2904d.trim());
                }
            }
            this.f2904d = "";
        } catch (Exception unused2) {
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (!IAPLib.IsUseWPIAP() && this.b) {
            this.f2904d = "";
        }
        this.b = true;
        if (str2.equals("shop_info")) {
            h hVar = new h();
            this.k = hVar;
            hVar.M();
            this.l = true;
            return;
        }
        if (this.l) {
            if (str2.equals("country")) {
                this.k.Q(attributes.getValue("id"));
                this.k.P(attributes.getValue("iso"));
                return;
            }
            if (str2.equals("operator")) {
                this.k.V(attributes.getValue("id"));
                return;
            }
            if (str2.equals(AppLovinEventTypes.USER_VIEWED_PRODUCT)) {
                this.k.b0(attributes.getValue("id"));
                return;
            }
            if (str2.equals("platform")) {
                this.k.Z(attributes.getValue("id"));
                return;
            } else if (str2.equals("language")) {
                this.k.T(attributes.getValue("id"));
                return;
            } else {
                if (str2.equals("text")) {
                    this.f2905e = attributes.getValue("key");
                    return;
                }
                return;
            }
        }
        if (str2.equals("content_list")) {
            this.m = true;
            return;
        }
        if (this.m) {
            if (str2.equals(AppLovinEventTypes.USER_VIEWED_CONTENT)) {
                this.f2906f = new g();
                this.f2906f.Q(attributes.getValue("id"));
                this.f2906f.R(attributes.getValue("type").toLowerCase());
                return;
            }
            if (str2.equals("attribute")) {
                this.f2905e = attributes.getValue("name");
                return;
            }
            if (str2.equals("bundle")) {
                try {
                    this.h = new JSONObject();
                    this.h.put("pointcut", attributes.getValue("pointcut"));
                    this.h.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, attributes.getValue(AppLovinEventParameters.PRODUCT_IDENTIFIER));
                    this.h.put("redirect", attributes.getValue("redirect"));
                    this.h.put("countdown", attributes.getValue("countdown"));
                    this.h.put(WebPreferenceConstants.LOCATION, attributes.getValue(WebPreferenceConstants.LOCATION));
                    this.h.put("localization_id", attributes.getValue("localization_id"));
                    this.j = new JSONArray();
                    this.o = true;
                    return;
                } catch (JSONException unused) {
                    return;
                }
            }
            if (this.o) {
                if (str2.equals("bundle_item")) {
                    this.i = new JSONObject();
                    this.p = true;
                    return;
                }
                return;
            }
            if (str2.equals("billing_list")) {
                this.n = true;
                return;
            }
            if (str2.equals("offline_items_bonus")) {
                this.f2906f.k();
                return;
            }
            if (this.n) {
                if (str2.equals("billing")) {
                    this.f2907g = BillingFactory.CreateBilling(attributes.getValue("type"));
                } else if (str2.equals("text")) {
                    this.f2905e = attributes.getValue("key");
                }
            }
        }
    }
}
