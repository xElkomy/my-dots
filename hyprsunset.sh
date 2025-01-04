mkdir -p ~/.config/systemd/user/ && \
cat << 'EOF' > ~/.config/systemd/user/hyprsunset.service
[Unit]
Description=Hyprland sunset mode
PartOf=graphical-session.target

[Service]
Type=simple
ExecStart=/usr/bin/hyprsunset
ExecStop=/usr/bin/hyprsunset -t 6500

[Install]
WantedBy=graphical-session.target
EOF

cat << 'EOF' > ~/.config/systemd/user/hyprsunset.timer
[Unit]
Description=Start hyprsunset at 8 PM

[Timer]
OnCalendar=*-*-* 20:00:00
Persistent=true

[Install]
WantedBy=timers.target
EOF

# Enable and start the timer
systemctl --user daemon-reload && \
systemctl --user enable --now hyprsunset.timer
Created symlink '/home/khaled/.config/systemd/user/timers.target.wants/hyprsunset.timer' → '/home/khaled/.config/systemd/user/hyprsunset.timer'.