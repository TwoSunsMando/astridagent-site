FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
# Standalone deep-linkable policy pages — paired with the SPA sections in
# index.html so Twilio reviewers (and other linkers) can hit /privacy.html
# etc. as real URLs instead of JS-revealed sections. Added 2026-05-16
# in response to A2P 10DLC campaign rejection 30908.
COPY privacy.html /usr/share/nginx/html/privacy.html
COPY terms.html /usr/share/nginx/html/terms.html
COPY sms-consent.html /usr/share/nginx/html/sms-consent.html
COPY policy-style.css /usr/share/nginx/html/policy-style.css
EXPOSE 80